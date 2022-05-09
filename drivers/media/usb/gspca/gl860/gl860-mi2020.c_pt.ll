; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/gl860/gl860-mi2020.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/gl860/gl860-mi2020.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.validx = type { i16, i16 }
%struct.idxdata = type { i8, [3 x i8] }
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

@tbl_init_at_startup = internal global { [10 x %struct.validx], [56 x i8] } { [10 x %struct.validx] [%struct.validx zeroinitializer, %struct.validx { i16 16, i16 16 }, %struct.validx { i16 8, i16 192 }, %struct.validx { i16 1, i16 193 }, %struct.validx { i16 1, i16 194 }, %struct.validx { i16 32, i16 6 }, %struct.validx { i16 106, i16 13 }, %struct.validx { i16 53, i16 -1 }, %struct.validx { i16 64, i16 0 }, %struct.validx { i16 99, i16 6 }], [56 x i8] zeroinitializer }, align 32
@tbl_common_0B = internal global { [11 x %struct.validx], [52 x i8] } { [11 x %struct.validx] [%struct.validx { i16 2, i16 4 }, %struct.validx { i16 106, i16 7 }, %struct.validx { i16 239, i16 6 }, %struct.validx { i16 106, i16 13 }, %struct.validx { i16 0, i16 192 }, %struct.validx { i16 16, i16 16 }, %struct.validx { i16 3, i16 193 }, %struct.validx { i16 66, i16 194 }, %struct.validx { i16 4, i16 216 }, %struct.validx { i16 0, i16 88 }, %struct.validx { i16 65, i16 0 }], [52 x i8] zeroinitializer }, align 32
@tbl_common_3B = internal global { [259 x %struct.idxdata], [276 x i8] } { [259 x %struct.idxdata] [%struct.idxdata { i8 51, [3 x i8] c"\86%\01" }, %struct.idxdata { i8 51, [3 x i8] c"\86%\00" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 48, [3 x i8] c"\1A\0A\CC" }, %struct.idxdata { i8 50, [3 x i8] c"\02\00\08" }, %struct.idxdata { i8 51, [3 x i8] c"\F4\03\1D" }, %struct.idxdata { i8 6, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 52, [3 x i8] c"\1E\8F\09" }, %struct.idxdata { i8 52, [3 x i8] c"\1C\01(" }, %struct.idxdata { i8 52, [3 x i8] c"\1E\8F\09" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 52, [3 x i8] c"\1E\8F\09" }, %struct.idxdata { i8 50, [3 x i8] c"\14\06\E6" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\22#" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A2\0F" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\0D" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A2\10" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\0B" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A2\11" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\07" }, %struct.idxdata { i8 51, [3 x i8] c"\F4\03\1D" }, %struct.idxdata { i8 53, [3 x i8] c"\A2\00\E2" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\AB\05" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\01" }, %struct.idxdata { i8 50, [3 x i8] c"n\00\86" }, %struct.idxdata { i8 50, [3 x i8] c"p\0F\AA" }, %struct.idxdata { i8 50, [3 x i8] c"r\0F\E4" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A3J" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00Z" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A3K" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\A6" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A3a" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\C8" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A3b" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\E1" }, %struct.idxdata { i8 52, [3 x i8] c"\CE\01\A8" }, %struct.idxdata { i8 52, [3 x i8] c"\D0f3" }, %struct.idxdata { i8 52, [3 x i8] c"\D21\9A" }, %struct.idxdata { i8 52, [3 x i8] c"\D4\94c" }, %struct.idxdata { i8 52, [3 x i8] c"\D6K%" }, %struct.idxdata { i8 52, [3 x i8] c"\D8&p" }, %struct.idxdata { i8 52, [3 x i8] c"\DArL" }, %struct.idxdata { i8 52, [3 x i8] c"\DC\FF\04" }, %struct.idxdata { i8 52, [3 x i8] c"\DE\01[" }, %struct.idxdata { i8 52, [3 x i8] c"\E6\01\13" }, %struct.idxdata { i8 52, [3 x i8] c"\EE\0B\F0" }, %struct.idxdata { i8 52, [3 x i8] c"\F6\0B\A4" }, %struct.idxdata { i8 53, [3 x i8] c"\00\F6\E7" }, %struct.idxdata { i8 53, [3 x i8] c"\08\0D\FD" }, %struct.idxdata { i8 53, [3 x i8] c"\10%c" }, %struct.idxdata { i8 53, [3 x i8] c"\185l" }, %struct.idxdata { i8 53, [3 x i8] c" B~" }, %struct.idxdata { i8 53, [3 x i8] c"(\19D" }, %struct.idxdata { i8 53, [3 x i8] c"09\D4" }, %struct.idxdata { i8 53, [3 x i8] c"8\F5\A8" }, %struct.idxdata { i8 53, [3 x i8] c"L\07\90" }, %struct.idxdata { i8 53, [3 x i8] c"D\07\B8" }, %struct.idxdata { i8 53, [3 x i8] c"\\\06\88" }, %struct.idxdata { i8 53, [3 x i8] c"T\07\FF" }, %struct.idxdata { i8 52, [3 x i8] c"\E0\01R" }, %struct.idxdata { i8 52, [3 x i8] c"\E8\00\CC" }, %struct.idxdata { i8 52, [3 x i8] c"\F0\0D\83" }, %struct.idxdata { i8 52, [3 x i8] c"\F8\0C\B3" }, %struct.idxdata { i8 53, [3 x i8] c"\02\FE\BA" }, %struct.idxdata { i8 53, [3 x i8] c"\0A\04\E0" }, %struct.idxdata { i8 53, [3 x i8] c"\12\1Cc" }, %struct.idxdata { i8 53, [3 x i8] c"\1A+Z" }, %struct.idxdata { i8 53, [3 x i8] c"\222^" }, %struct.idxdata { i8 53, [3 x i8] c"*\0D(" }, %struct.idxdata { i8 53, [3 x i8] c"2,\02" }, %struct.idxdata { i8 53, [3 x i8] c":\F4\FA" }, %struct.idxdata { i8 53, [3 x i8] c"N\07\EF" }, %struct.idxdata { i8 53, [3 x i8] c"F\07\88" }, %struct.idxdata { i8 53, [3 x i8] c"^\07\C1" }, %struct.idxdata { i8 53, [3 x i8] c"V\04d" }, %struct.idxdata { i8 52, [3 x i8] c"\E4\01\15" }, %struct.idxdata { i8 52, [3 x i8] c"\EC\00\82" }, %struct.idxdata { i8 52, [3 x i8] c"\F4\0C\CE" }, %struct.idxdata { i8 52, [3 x i8] c"\FC\0C\BA" }, %struct.idxdata { i8 53, [3 x i8] c"\06\1F\02" }, %struct.idxdata { i8 53, [3 x i8] c"\0E\02\E3" }, %struct.idxdata { i8 53, [3 x i8] c"\16\1AP" }, %struct.idxdata { i8 53, [3 x i8] c"\1E$9" }, %struct.idxdata { i8 53, [3 x i8] c"&#L" }, %struct.idxdata { i8 53, [3 x i8] c".\F9\1B" }, %struct.idxdata { i8 53, [3 x i8] c"6#\19" }, %struct.idxdata { i8 53, [3 x i8] c">\12\08" }, %struct.idxdata { i8 53, [3 x i8] c"R\07\22" }, %struct.idxdata { i8 53, [3 x i8] c"J\03\D3" }, %struct.idxdata { i8 53, [3 x i8] c"b\06T" }, %struct.idxdata { i8 53, [3 x i8] c"Z\04]" }, %struct.idxdata { i8 52, [3 x i8] c"\E2\01\04" }, %struct.idxdata { i8 52, [3 x i8] c"\EA\00\A0" }, %struct.idxdata { i8 52, [3 x i8] c"\F2\0C\BC" }, %struct.idxdata { i8 52, [3 x i8] c"\FA\0C[" }, %struct.idxdata { i8 53, [3 x i8] c"\04\17\F2" }, %struct.idxdata { i8 53, [3 x i8] c"\0C\02\08" }, %struct.idxdata { i8 53, [3 x i8] c"\14(C" }, %struct.idxdata { i8 53, [3 x i8] c"\1C(b" }, %struct.idxdata { i8 53, [3 x i8] c"$+`" }, %struct.idxdata { i8 53, [3 x i8] c",\073" }, %struct.idxdata { i8 53, [3 x i8] c"4\1F\B0" }, %struct.idxdata { i8 53, [3 x i8] c"<\ED\CD" }, %struct.idxdata { i8 53, [3 x i8] c"P\00\06" }, %struct.idxdata { i8 53, [3 x i8] c"H\07\FF" }, %struct.idxdata { i8 53, [3 x i8] c"`\05\89" }, %struct.idxdata { i8 53, [3 x i8] c"X\07\FF" }, %struct.idxdata { i8 53, [3 x i8] c"@\00\A0" }, %struct.idxdata { i8 53, [3 x i8] c"B\00\00" }, %struct.idxdata { i8 50, [3 x i8] c"\10\01\FC" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\18" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00<" }, %struct.idxdata { i8 51, [3 x i8] c"x\00\00" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 53, [3 x i8] c"\B8\1F " }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A2\06" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\10" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A2\07" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\08" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A2B" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\0B" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A2J" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\8C" }, %struct.idxdata { i8 53, [3 x i8] c"\BA\FA\08" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A2\02" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\22" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A2\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\BB" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A4\04" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\80" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A7\9D" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A7\9E" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A2\0C" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\17" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A2\15" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\04" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A2\14" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00 " }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\17" }, %struct.idxdata { i8 51, [3 x i8] c"\90!\11" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\1B" }, %struct.idxdata { i8 51, [3 x i8] c"\90\02O" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'%" }, %struct.idxdata { i8 51, [3 x i8] c"\90\06\0F" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'9" }, %struct.idxdata { i8 51, [3 x i8] c"\90!\11" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'=" }, %struct.idxdata { i8 51, [3 x i8] c"\90\01 " }, %struct.idxdata { i8 51, [3 x i8] c"\8C'G" }, %struct.idxdata { i8 51, [3 x i8] c"\90\09L" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\02\84" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\05" }, %struct.idxdata { i8 51, [3 x i8] c"\90\01\E2" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\07" }, %struct.idxdata { i8 51, [3 x i8] c"\90\06@" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\09" }, %struct.idxdata { i8 51, [3 x i8] c"\90\04\B0" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\0D" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\0F" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\11" }, %struct.idxdata { i8 51, [3 x i8] c"\90\04\BD" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\13" }, %struct.idxdata { i8 51, [3 x i8] c"\90\06M" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\15" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\17" }, %struct.idxdata { i8 51, [3 x i8] c"\90!\11" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\19" }, %struct.idxdata { i8 51, [3 x i8] c"\90\04l" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\1B" }, %struct.idxdata { i8 51, [3 x i8] c"\90\02O" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\1D" }, %struct.idxdata { i8 51, [3 x i8] c"\90\01\02" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\1F" }, %struct.idxdata { i8 51, [3 x i8] c"\90\02y" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'!" }, %struct.idxdata { i8 51, [3 x i8] c"\90\01U" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'#" }, %struct.idxdata { i8 51, [3 x i8] c"\90\02\85" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'%" }, %struct.idxdata { i8 51, [3 x i8] c"\90\06\0F" }, %struct.idxdata { i8 51, [3 x i8] c"\8C''" }, %struct.idxdata { i8 51, [3 x i8] c"\90  " }, %struct.idxdata { i8 51, [3 x i8] c"\8C')" }, %struct.idxdata { i8 51, [3 x i8] c"\90  " }, %struct.idxdata { i8 51, [3 x i8] c"\8C'+" }, %struct.idxdata { i8 51, [3 x i8] c"\90\10 " }, %struct.idxdata { i8 51, [3 x i8] c"\8C'-" }, %struct.idxdata { i8 51, [3 x i8] c"\90 \07" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'/" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\04" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'1" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\04" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'3" }, %struct.idxdata { i8 51, [3 x i8] c"\90\04\BB" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'5" }, %struct.idxdata { i8 51, [3 x i8] c"\90\06K" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'7" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'9" }, %struct.idxdata { i8 51, [3 x i8] c"\90!\11" }, %struct.idxdata { i8 51, [3 x i8] c"\8C';" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00$" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'=" }, %struct.idxdata { i8 51, [3 x i8] c"\90\01 " }, %struct.idxdata { i8 51, [3 x i8] c"\8C'A" }, %struct.idxdata { i8 51, [3 x i8] c"\90\01i" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'E" }, %struct.idxdata { i8 51, [3 x i8] c"\90\04\ED" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'G" }, %struct.idxdata { i8 51, [3 x i8] c"\90\09L" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'Q" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'S" }, %struct.idxdata { i8 51, [3 x i8] c"\90\03 " }, %struct.idxdata { i8 51, [3 x i8] c"\8C'U" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'W" }, %struct.idxdata { i8 51, [3 x i8] c"\90\02X" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'_" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'a" }, %struct.idxdata { i8 51, [3 x i8] c"\90\06@" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'c" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'e" }, %struct.idxdata { i8 51, [3 x i8] c"\90\04\B0" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\22." }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\A1" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A4\08" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\1F" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A4\09" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00!" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A4\0A" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00%" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A4\0B" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00'" }, %struct.idxdata { i8 51, [3 x i8] c"\8C$\11" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\A1" }, %struct.idxdata { i8 51, [3 x i8] c"\8C$\13" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\C1" }, %struct.idxdata { i8 51, [3 x i8] c"\8C$\15" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00j" }, %struct.idxdata { i8 51, [3 x i8] c"\8C$\17" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\80" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\05" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\06" }, %struct.idxdata { i8 3, [3 x i8] c"\FF\FF\FF" }], [276 x i8] zeroinitializer }, align 32
@tbl_init_post_alt_low1 = internal global { [16 x %struct.idxdata], [32 x i8] } { [16 x %struct.idxdata] [%struct.idxdata { i8 51, [3 x i8] c"\8C'\15" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00%" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\22." }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\81" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A4\08" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\17" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A4\09" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\1A" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A4\0A" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\1D" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A4\0B" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00 " }, %struct.idxdata { i8 51, [3 x i8] c"\8C$\11" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\81" }, %struct.idxdata { i8 51, [3 x i8] c"\8C$\13" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\9B" }], [32 x i8] zeroinitializer }, align 32
@tbl_init_post_alt_low2 = internal global { [10 x %struct.idxdata], [56 x i8] } { [10 x %struct.idxdata] [%struct.idxdata { i8 51, [3 x i8] c"\8C'\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\03$" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\05" }, %struct.idxdata { i8 51, [3 x i8] c"\90\02X" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\05" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\06" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }], [56 x i8] zeroinitializer }, align 32
@tbl_init_post_alt_low3 = internal global { [42 x %struct.idxdata], [56 x i8] } { [42 x %struct.idxdata] [%struct.idxdata { i8 52, [3 x i8] c"\1E\8F\09" }, %struct.idxdata { i8 52, [3 x i8] c"\1C\01(" }, %struct.idxdata { i8 52, [3 x i8] c"\1E\8F\09" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 52, [3 x i8] c"\1E\8F\09" }, %struct.idxdata { i8 50, [3 x i8] c"\14\06\E6" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1 " }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\01" }, %struct.idxdata { i8 51, [3 x i8] c".\01\00" }, %struct.idxdata { i8 52, [3 x i8] c"\04\00*" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A7\02" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\95" }, %struct.idxdata { i8 51, [3 x i8] c"\90\01\00" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1 " }, %struct.idxdata { i8 51, [3 x i8] c"\90\00r" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\02" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A7\02" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\01" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1 " }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\01" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A7\02" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\05" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\06" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\05" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\06" }], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\8C'\07\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\90\05\04\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\8C'\09\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\90\04\02\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\90\06@\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\90\04\B0\00", [28 x i8] zeroinitializer }, align 32
@tbl_init_post_alt_big = internal global { [56 x %struct.idxdata], [32 x i8] } { [56 x %struct.idxdata] [%struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\05" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\06" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 52, [3 x i8] c"\1E\8F\09" }, %struct.idxdata { i8 52, [3 x i8] c"\1C\01(" }, %struct.idxdata { i8 52, [3 x i8] c"\1E\8F\09" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 52, [3 x i8] c"\1E\8F\09" }, %struct.idxdata { i8 50, [3 x i8] c"\14\06\E6" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\05" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\06" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\05" }, %struct.idxdata { i8 2, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\06" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1 " }, %struct.idxdata { i8 51, [3 x i8] c"\90\00r" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A10" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\03" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A11" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\02" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A12" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\03" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A14" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\03" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\02" }, %struct.idxdata { i8 51, [3 x i8] c".\01\00" }, %struct.idxdata { i8 52, [3 x i8] c"\04\00*" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A7\02" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\01" }, %struct.idxdata { i8 51, [3 x i8] c"\8C'\97" }, %struct.idxdata { i8 51, [3 x i8] c"\90\01\00" }, %struct.idxdata { i8 51, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1 " }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\01" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A7\02" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1 " }, %struct.idxdata { i8 51, [3 x i8] c"\90\00r" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\02" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A7\02" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\01" }, %struct.idxdata { i8 51, [3 x i8] c"\FF\FF\FF" }], [32 x i8] zeroinitializer }, align 32
@dat_freq1 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\8C\A4\04", [29 x i8] zeroinitializer }, align 32
@dat_wbal1 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\8C\A2\0C", [29 x i8] zeroinitializer }, align 32
@dat_multi5 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\8C\A1\03", [29 x i8] zeroinitializer }, align 32
@dat_multi6 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\90\00\05", [29 x i8] zeroinitializer }, align 32
@tbl_init_post_alt_3B = internal global { [78 x %struct.idxdata], [72 x i8] } { [78 x %struct.idxdata] [%struct.idxdata { i8 50, [3 x i8] c"\10\01\F8" }, %struct.idxdata { i8 52, [3 x i8] c"\CE\01\A8" }, %struct.idxdata { i8 52, [3 x i8] c"\D0f3" }, %struct.idxdata { i8 52, [3 x i8] c"\D21\9A" }, %struct.idxdata { i8 52, [3 x i8] c"\D4\94c" }, %struct.idxdata { i8 52, [3 x i8] c"\D6K%" }, %struct.idxdata { i8 52, [3 x i8] c"\D8&p" }, %struct.idxdata { i8 52, [3 x i8] c"\DArL" }, %struct.idxdata { i8 52, [3 x i8] c"\DC\FF\04" }, %struct.idxdata { i8 52, [3 x i8] c"\DE\01[" }, %struct.idxdata { i8 52, [3 x i8] c"\E6\01\13" }, %struct.idxdata { i8 52, [3 x i8] c"\EE\0B\F0" }, %struct.idxdata { i8 52, [3 x i8] c"\F6\0B\A4" }, %struct.idxdata { i8 53, [3 x i8] c"\00\F6\E7" }, %struct.idxdata { i8 53, [3 x i8] c"\08\0D\FD" }, %struct.idxdata { i8 53, [3 x i8] c"\10%c" }, %struct.idxdata { i8 53, [3 x i8] c"\185l" }, %struct.idxdata { i8 53, [3 x i8] c" B~" }, %struct.idxdata { i8 53, [3 x i8] c"(\19D" }, %struct.idxdata { i8 53, [3 x i8] c"09\D4" }, %struct.idxdata { i8 53, [3 x i8] c"8\F5\A8" }, %struct.idxdata { i8 53, [3 x i8] c"L\07\90" }, %struct.idxdata { i8 53, [3 x i8] c"D\07\B8" }, %struct.idxdata { i8 53, [3 x i8] c"\\\06\88" }, %struct.idxdata { i8 53, [3 x i8] c"T\07\FF" }, %struct.idxdata { i8 52, [3 x i8] c"\E0\01R" }, %struct.idxdata { i8 52, [3 x i8] c"\E8\00\CC" }, %struct.idxdata { i8 52, [3 x i8] c"\F0\0D\83" }, %struct.idxdata { i8 52, [3 x i8] c"\F8\0C\B3" }, %struct.idxdata { i8 53, [3 x i8] c"\02\FE\BA" }, %struct.idxdata { i8 53, [3 x i8] c"\0A\04\E0" }, %struct.idxdata { i8 53, [3 x i8] c"\12\1Cc" }, %struct.idxdata { i8 53, [3 x i8] c"\1A+Z" }, %struct.idxdata { i8 53, [3 x i8] c"\222^" }, %struct.idxdata { i8 53, [3 x i8] c"*\0D(" }, %struct.idxdata { i8 53, [3 x i8] c"2,\02" }, %struct.idxdata { i8 53, [3 x i8] c":\F4\FA" }, %struct.idxdata { i8 53, [3 x i8] c"N\07\EF" }, %struct.idxdata { i8 53, [3 x i8] c"F\07\88" }, %struct.idxdata { i8 53, [3 x i8] c"^\07\C1" }, %struct.idxdata { i8 53, [3 x i8] c"V\04d" }, %struct.idxdata { i8 52, [3 x i8] c"\E4\01\15" }, %struct.idxdata { i8 52, [3 x i8] c"\EC\00\82" }, %struct.idxdata { i8 52, [3 x i8] c"\F4\0C\CE" }, %struct.idxdata { i8 52, [3 x i8] c"\FC\0C\BA" }, %struct.idxdata { i8 53, [3 x i8] c"\06\1F\02" }, %struct.idxdata { i8 53, [3 x i8] c"\0E\02\E3" }, %struct.idxdata { i8 53, [3 x i8] c"\16\1AP" }, %struct.idxdata { i8 53, [3 x i8] c"\1E$9" }, %struct.idxdata { i8 53, [3 x i8] c"&#L" }, %struct.idxdata { i8 53, [3 x i8] c".\F9\1B" }, %struct.idxdata { i8 53, [3 x i8] c"6#\19" }, %struct.idxdata { i8 53, [3 x i8] c">\12\08" }, %struct.idxdata { i8 53, [3 x i8] c"R\07\22" }, %struct.idxdata { i8 53, [3 x i8] c"J\03\D3" }, %struct.idxdata { i8 53, [3 x i8] c"b\06T" }, %struct.idxdata { i8 53, [3 x i8] c"Z\04]" }, %struct.idxdata { i8 52, [3 x i8] c"\E2\01\04" }, %struct.idxdata { i8 52, [3 x i8] c"\EA\00\A0" }, %struct.idxdata { i8 52, [3 x i8] c"\F2\0C\BC" }, %struct.idxdata { i8 52, [3 x i8] c"\FA\0C[" }, %struct.idxdata { i8 53, [3 x i8] c"\04\17\F2" }, %struct.idxdata { i8 53, [3 x i8] c"\0C\02\08" }, %struct.idxdata { i8 53, [3 x i8] c"\14(C" }, %struct.idxdata { i8 53, [3 x i8] c"\1C(b" }, %struct.idxdata { i8 53, [3 x i8] c"$+`" }, %struct.idxdata { i8 53, [3 x i8] c",\073" }, %struct.idxdata { i8 53, [3 x i8] c"4\1F\B0" }, %struct.idxdata { i8 53, [3 x i8] c"<\ED\CD" }, %struct.idxdata { i8 53, [3 x i8] c"P\00\06" }, %struct.idxdata { i8 53, [3 x i8] c"H\07\FF" }, %struct.idxdata { i8 53, [3 x i8] c"`\05\89" }, %struct.idxdata { i8 53, [3 x i8] c"X\07\FF" }, %struct.idxdata { i8 53, [3 x i8] c"@\00\A0" }, %struct.idxdata { i8 53, [3 x i8] c"B\00\00" }, %struct.idxdata { i8 50, [3 x i8] c"\10\01\FC" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\18" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00<" }], [72 x i8] zeroinitializer }, align 32
@dat_hvflip1 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\8C'\19", [29 x i8] zeroinitializer }, align 32
@dat_hvflip3 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\8C';", [29 x i8] zeroinitializer }, align 32
@dat_hvflip5 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\8C\A1\03", [29 x i8] zeroinitializer }, align 32
@dat_hvflip6 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\90\00\06", [29 x i8] zeroinitializer }, align 32
@tbl_middle_hvflip_low = internal global { [8 x %struct.idxdata], [32 x i8] } { [8 x %struct.idxdata] [%struct.idxdata { i8 51, [3 x i8] c"\90\00\06" }, %struct.idxdata { i8 6, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\06" }, %struct.idxdata { i8 6, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\06" }, %struct.idxdata { i8 6, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\06" }, %struct.idxdata { i8 6, [3 x i8] c"\FF\FF\FF" }], [32 x i8] zeroinitializer }, align 32
@tbl_middle_hvflip_big = internal global { [13 x %struct.idxdata], [44 x i8] } { [13 x %struct.idxdata] [%struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\01" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1 " }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A7\02" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\00" }, %struct.idxdata { i8 102, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\03" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\02" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1 " }, %struct.idxdata { i8 51, [3 x i8] c"\90\00r" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A7\02" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\01" }], [44 x i8] zeroinitializer }, align 32
@tbl_end_hvflip = internal global { [11 x %struct.idxdata], [52 x i8] } { [11 x %struct.idxdata] [%struct.idxdata { i8 51, [3 x i8] c"\8C\A1\02" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\1F" }, %struct.idxdata { i8 6, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\02" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\1F" }, %struct.idxdata { i8 6, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\02" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\1F" }, %struct.idxdata { i8 6, [3 x i8] c"\FF\FF\FF" }, %struct.idxdata { i8 51, [3 x i8] c"\8C\A1\02" }, %struct.idxdata { i8 51, [3 x i8] c"\90\00\1F" }], [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\D0\02\D1\08\D2\E1\D3\02\D4\10\D5\81\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\D0\02\D1\10\D2W\D3\02\D4\18\D5!\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\D0\02\D1 \D2\01\D3\02\D4(\D5\01\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\D0\02\D1 \D2\AF\D3\02\D40\D5A\00", [19 x i8] zeroinitializer }, align 32
@__const.mi2020_camera_settings.dat_sharp = private unnamed_addr constant [3 x i8] c"l\00\08", align 1
@__const.mi2020_camera_settings.dat_freq2 = private unnamed_addr constant [3 x i8] c"\90\00\80", align 1
@__const.mi2020_camera_settings.dat_multi3 = private unnamed_addr constant [3 x i8] c"\8C\A7\00", align 1
@__const.mi2020_camera_settings.dat_hvflip2 = private unnamed_addr constant [3 x i8] c"\90\04l", align 1
@__const.mi2020_camera_settings.dat_hvflip4 = private unnamed_addr constant [3 x i8] c"\90\00$", align 1
@__const.mi2020_camera_settings.dat_wbal2 = private unnamed_addr constant [3 x i8] c"\90\00\00", align 1
@dat_bright1 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\8C\A2\06", [29 x i8] zeroinitializer }, align 32
@dat_bright3 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\8C\A1\02", [29 x i8] zeroinitializer }, align 32
@dat_bright4 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\90\00\0F", [29 x i8] zeroinitializer }, align 32
@dat_bright5 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\8C\A1\03", [29 x i8] zeroinitializer }, align 32
@dat_bright6 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\90\00\05", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"tbl_init_at_startup\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 61, i32 22 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"tbl_common_0B\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 68, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"tbl_common_3B\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 74, i32 23 }
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"tbl_init_post_alt_low1\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 211, i32 23 }
@___asan_gen_.22 = private unnamed_addr constant [23 x i8] c"tbl_init_post_alt_low2\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 222, i32 23 }
@___asan_gen_.25 = private unnamed_addr constant [23 x i8] c"tbl_init_post_alt_low3\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 231, i32 23 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 521, i32 9 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 523, i32 9 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 525, i32 9 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 527, i32 9 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 534, i32 9 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 538, i32 9 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"tbl_init_post_alt_big\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 259, i32 23 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"dat_freq1\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 56, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [10 x i8] c"dat_wbal1\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 12, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"dat_multi5\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 58, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"dat_multi6\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 59, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"tbl_init_post_alt_3B\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 296, i32 23 }
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"dat_hvflip1\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 20, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"dat_hvflip3\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 21, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"dat_hvflip5\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 22, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"dat_hvflip6\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 23, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"tbl_middle_hvflip_low\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 25, i32 23 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"tbl_middle_hvflip_big\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 36, i32 23 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"tbl_end_hvflip\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 46, i32 23 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 338, i32 23 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 339, i32 23 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 340, i32 23 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 341, i32 23 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"dat_bright1\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 14, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"dat_bright3\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 15, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"dat_bright4\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 16, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"dat_bright5\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 17, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"dat_bright6\00", align 1
@___asan_gen_.110 = private constant [48 x i8] c"../drivers/media/usb/gspca/gl860/gl860-mi2020.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 18, i32 11 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @tbl_init_at_startup, ptr @tbl_common_0B, ptr @tbl_common_3B, ptr @tbl_init_post_alt_low1, ptr @tbl_init_post_alt_low2, ptr @tbl_init_post_alt_low3, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tbl_init_post_alt_big, ptr @dat_freq1, ptr @dat_wbal1, ptr @dat_multi5, ptr @dat_multi6, ptr @tbl_init_post_alt_3B, ptr @dat_hvflip1, ptr @dat_hvflip3, ptr @dat_hvflip5, ptr @dat_hvflip6, ptr @tbl_middle_hvflip_low, ptr @tbl_middle_hvflip_big, ptr @tbl_end_hvflip, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dat_bright1, ptr @dat_bright3, ptr @dat_bright4, ptr @dat_bright5, ptr @dat_bright6], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_init_at_startup to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_common_0B to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_common_3B to i32), i32 1036, i32 1312, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_init_post_alt_low1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_init_post_alt_low2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_init_post_alt_low3 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_init_post_alt_big to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_freq1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_wbal1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_multi5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_multi6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_init_post_alt_3B to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_hvflip1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_hvflip3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_hvflip5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_hvflip6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_middle_hvflip_low to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_middle_hvflip_big to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_end_hvflip to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_bright1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_bright3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_bright4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_bright5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_bright6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mi2020_init_settings(ptr noundef writeonly %gspca_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vcur = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %0 = ptrtoint ptr %vcur to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %vcur, align 8
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %brightness to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 70, ptr %brightness, align 2
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %sharpness to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 20, ptr %sharpness, align 4
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %contrast to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %contrast, align 2
  %gamma = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %gamma to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %gamma, align 8
  %hue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %5 = ptrtoint ptr %hue to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %hue, align 2
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %saturation to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 60, ptr %saturation, align 4
  %whitebal = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %AC50Hz = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10
  %7 = ptrtoint ptr %whitebal to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %whitebal, align 2
  %8 = ptrtoint ptr %AC50Hz to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %AC50Hz, align 2
  %vmax = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %9 = ptrtoint ptr %vmax to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 64, ptr %vmax, align 8
  %brightness13 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %brightness13 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 128, ptr %brightness13, align 2
  %sharpness15 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %sharpness15 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 40, ptr %sharpness15, align 4
  %contrast17 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %contrast17 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 3, ptr %contrast17, align 2
  %gamma19 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %gamma19 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %gamma19, align 8
  %hue21 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 5
  %14 = ptrtoint ptr %hue21 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %hue21, align 2
  %saturation23 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 6
  %15 = ptrtoint ptr %saturation23 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %saturation23, align 4
  %whitebal25 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 7
  %16 = ptrtoint ptr %whitebal25 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %whitebal25, align 2
  %mirror27 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %mirror27 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %mirror27, align 8
  %flip29 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 9
  %18 = ptrtoint ptr %flip29 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %flip29, align 1
  %AC50Hz31 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 10
  %19 = ptrtoint ptr %AC50Hz31 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %AC50Hz31, align 2
  %dev_camera_settings = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %20 = ptrtoint ptr %dev_camera_settings to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mi2020_camera_settings, ptr %dev_camera_settings, align 4
  %dev_init_at_startup = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %21 = ptrtoint ptr %dev_init_at_startup to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mi2020_init_at_startup, ptr %dev_init_at_startup, align 8
  %dev_configure_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %22 = ptrtoint ptr %dev_configure_alt to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mi2020_configure_alt, ptr %dev_configure_alt, align 4
  %dev_init_pre_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %23 = ptrtoint ptr %dev_init_pre_alt to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mi2020_init_pre_alt, ptr %dev_init_pre_alt, align 4
  %dev_post_unset_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %24 = ptrtoint ptr %dev_post_unset_alt to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mi2020_post_unset_alt, ptr %dev_post_unset_alt, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mi2020_camera_settings(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %dat_sharp = alloca [3 x i8], align 1
  %dat_bright2 = alloca [3 x i8], align 1
  %dat_freq2 = alloca [3 x i8], align 1
  %dat_multi1 = alloca [3 x i8], align 1
  %dat_multi2 = alloca [3 x i8], align 1
  %dat_multi3 = alloca [3 x i8], align 1
  %dat_multi4 = alloca [3 x i8], align 1
  %dat_hvflip2 = alloca [3 x i8], align 1
  %dat_hvflip4 = alloca [3 x i8], align 1
  %dat_wbal2 = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
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
  %vcur = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %6 = ptrtoint ptr %vcur to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vcur, align 8
  %conv2 = trunc i16 %7 to i8
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %brightness to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %brightness, align 2
  %conv4 = trunc i16 %9 to i8
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %sharpness to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sharpness, align 4
  %conv6 = trunc i16 %11 to i8
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %contrast to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %contrast, align 2
  %gamma = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %gamma to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %gamma, align 8
  %hue12 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %hue12 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hue12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp = icmp ne i16 %17, 0
  %mirror16 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8
  %18 = ptrtoint ptr %mirror16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mirror16, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp18 = icmp ne i8 %19, 0
  %mirrorMask = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %20 = ptrtoint ptr %mirrorMask to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mirrorMask, align 1
  %22 = zext i1 %cmp18 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %22)
  %cmp21 = icmp ne i8 %21, %22
  %flip24 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9
  %23 = ptrtoint ptr %flip24 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flip24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp26 = icmp ne i8 %24, 0
  %25 = zext i1 %cmp26 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %25)
  %cmp31 = icmp ne i8 %21, %25
  %AC50Hz = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10
  %26 = ptrtoint ptr %AC50Hz to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %AC50Hz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp35 = icmp ne i8 %27, 0
  %whitebal = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %28 = ptrtoint ptr %whitebal to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %whitebal, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_sharp) #5
  %30 = call ptr @memcpy(ptr %dat_sharp, ptr @__const.mi2020_camera_settings.dat_sharp, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_bright2) #5
  %31 = call ptr @memcpy(ptr %dat_bright2, ptr @__const.mi2020_camera_settings.dat_wbal2, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_freq2) #5
  %32 = call ptr @memcpy(ptr %dat_freq2, ptr @__const.mi2020_camera_settings.dat_freq2, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_multi1) #5
  %33 = call ptr @memcpy(ptr %dat_multi1, ptr @__const.mi2020_camera_settings.dat_multi3, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_multi2) #5
  %34 = call ptr @memcpy(ptr %dat_multi2, ptr @__const.mi2020_camera_settings.dat_wbal2, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_multi3) #5
  %35 = call ptr @memcpy(ptr %dat_multi3, ptr @__const.mi2020_camera_settings.dat_multi3, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_multi4) #5
  %36 = call ptr @memcpy(ptr %dat_multi4, ptr @__const.mi2020_camera_settings.dat_wbal2, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_hvflip2) #5
  %37 = call ptr @memcpy(ptr %dat_hvflip2, ptr @__const.mi2020_camera_settings.dat_hvflip2, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_hvflip4) #5
  %38 = call ptr @memcpy(ptr %dat_hvflip4, ptr @__const.mi2020_camera_settings.dat_hvflip4, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_wbal2) #5
  %39 = call ptr @memcpy(ptr %dat_wbal2, ptr @__const.mi2020_camera_settings.dat_wbal2, i32 3)
  %nbIm = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %40 = ptrtoint ptr %nbIm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nbIm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp39 = icmp slt i32 %41, 4
  %waitSet = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %waitSet to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %waitSet, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %43 = ptrtoint ptr %waitSet to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %waitSet, align 4
  %vold = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %AC50Hz42 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 10
  %44 = ptrtoint ptr %AC50Hz42 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %AC50Hz42, align 2
  %46 = zext i1 %cmp35 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %46)
  %cmp44.not = icmp eq i8 %45, %46
  br i1 %cmp44.not, label %if.end.if.end53_crit_edge, label %if.then46

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then46:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %AC50Hz42 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %AC50Hz42, align 2
  %conv50 = select i1 %cmp35, i8 -64, i8 -128
  %arrayidx51 = getelementptr inbounds [3 x i8], ptr %dat_freq2, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv50, ptr %arrayidx51, align 1
  %call = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_freq1) #5
  %call52 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_freq2) #5
  call void @msleep(i32 noundef 20) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then46, %if.end.if.end53_crit_edge
  %whitebal55 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 7
  %49 = ptrtoint ptr %whitebal55 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %whitebal55, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %50)
  %cmp57.not = icmp eq i16 %29, %50
  br i1 %cmp57.not, label %if.end53.if.end111_crit_edge, label %if.then59

if.end53.if.end111_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.then59:                                        ; preds = %if.end53
  %51 = ptrtoint ptr %whitebal55 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %29, ptr %whitebal55, align 2
  %whitebal65 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 7
  %52 = ptrtoint ptr %whitebal65 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %whitebal65, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %53)
  %cmp67 = icmp ugt i16 %29, %53
  %narrow = select i1 %cmp67, i16 0, i16 %29
  %arrayidx71 = getelementptr inbounds [3 x i8], ptr %dat_multi1, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -99, ptr %arrayidx71, align 1
  %arrayidx75 = getelementptr inbounds [3 x i8], ptr %dat_multi3, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -98, ptr %arrayidx75, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %narrow)
  %56 = icmp ult i16 %narrow, 3
  br i1 %56, label %switch.lookup, label %if.then59.if.end97_crit_edge

if.then59.if.end97_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

switch.lookup:                                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  %switch.cast = zext i16 %narrow to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 2097152, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %switch.cast472 = zext i16 %narrow to i24
  %switch.shiftamt473 = shl nuw nsw i24 %switch.cast472, 3
  %switch.downshift474 = lshr i24 1520919, %switch.shiftamt473
  %switch.masked475 = trunc i24 %switch.downshift474 to i8
  %arrayidx85 = getelementptr inbounds [3 x i8], ptr %dat_multi2, i32 0, i32 2
  %57 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %switch.masked, ptr %arrayidx85, align 1
  %arrayidx86 = getelementptr inbounds [3 x i8], ptr %dat_multi4, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %switch.masked, ptr %arrayidx86, align 1
  %arrayidx87 = getelementptr inbounds [3 x i8], ptr %dat_wbal2, i32 0, i32 2
  %59 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %switch.masked475, ptr %arrayidx87, align 1
  br label %if.end97

if.end97:                                         ; preds = %switch.lookup, %if.then59.if.end97_crit_edge
  %call99 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi1) #5
  %call101 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi2) #5
  %call103 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi3) #5
  %call105 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi4) #5
  %call106 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_wbal1) #5
  %call108 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_wbal2) #5
  %call109 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_multi5) #5
  %call110 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_multi6) #5
  br label %if.end111

if.end111:                                        ; preds = %if.end97, %if.end53.if.end111_crit_edge
  %mirror113 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 8
  %60 = ptrtoint ptr %mirror113 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %mirror113, align 4
  %62 = zext i1 %cmp21 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %62)
  %cmp115.not = icmp eq i8 %61, %62
  br i1 %cmp115.not, label %lor.lhs.false117, label %if.end111.if.then123_crit_edge

if.end111.if.then123_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = zext i1 %cmp31 to i8
  br label %if.then123

lor.lhs.false117:                                 ; preds = %if.end111
  %flip119 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 9
  %63 = ptrtoint ptr %flip119 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %flip119, align 1
  %65 = zext i1 %cmp31 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %65)
  %cmp121.not = icmp eq i8 %64, %65
  br i1 %cmp121.not, label %lor.lhs.false117.if.end158_crit_edge, label %lor.lhs.false117.if.then123_crit_edge

lor.lhs.false117.if.then123_crit_edge:            ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then123

lor.lhs.false117.if.end158_crit_edge:             ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

if.then123:                                       ; preds = %lor.lhs.false117.if.then123_crit_edge, %if.end111.if.then123_crit_edge
  %conv127.pre-phi = phi i8 [ %.pre, %if.end111.if.then123_crit_edge ], [ %65, %lor.lhs.false117.if.then123_crit_edge ]
  %66 = ptrtoint ptr %mirror113 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %62, ptr %mirror113, align 4
  %flip129 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 9
  %67 = ptrtoint ptr %flip129 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv127.pre-phi, ptr %flip129, align 1
  %mul = select i1 %cmp31, i8 0, i8 2
  %not.cmp21 = xor i1 %cmp21, true
  %sub131 = zext i1 %not.cmp21 to i8
  %add130 = or i8 %mul, %sub131
  %conv133 = or i8 %add130, 108
  %arrayidx134 = getelementptr inbounds [3 x i8], ptr %dat_hvflip2, i32 0, i32 2
  %68 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv133, ptr %arrayidx134, align 1
  %conv140 = or i8 %add130, 36
  %arrayidx141 = getelementptr inbounds [3 x i8], ptr %dat_hvflip4, i32 0, i32 2
  %69 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv140, ptr %arrayidx141, align 1
  call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt_3B, i32 noundef 78) #5
  %call142 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_hvflip1) #5
  %call144 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_hvflip2) #5
  %call145 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_hvflip3) #5
  %call147 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_hvflip4) #5
  %call148 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_hvflip5) #5
  %call149 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_hvflip6) #5
  call void @msleep(i32 noundef 40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch = icmp ult i32 %5, 2
  br i1 %switch, label %if.then155, label %if.else156

if.then155:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_middle_hvflip_low, i32 noundef 8) #5
  br label %if.end157

if.else156:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_middle_hvflip_big, i32 noundef 13) #5
  br label %if.end157

if.end157:                                        ; preds = %if.else156, %if.then155
  call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_end_hvflip, i32 noundef 11) #5
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %lor.lhs.false117.if.end158_crit_edge
  %brightness160 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %brightness160 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %brightness160, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %71)
  %cmp162.not = icmp eq i16 %9, %71
  br i1 %cmp162.not, label %if.end158.if.end187_crit_edge, label %if.then164

if.end158.if.end187_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end187

if.then164:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %brightness160 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %9, ptr %brightness160, align 2
  %brightness172 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %73 = ptrtoint ptr %brightness172 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %brightness172, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %74)
  %cmp174 = icmp ugt i16 %9, %74
  %bright.0 = select i1 %cmp174, i8 0, i8 %conv4
  %arrayidx179 = getelementptr inbounds [3 x i8], ptr %dat_bright2, i32 0, i32 2
  %75 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %bright.0, ptr %arrayidx179, align 1
  %call180 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_bright1) #5
  %call182 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_bright2) #5
  %call183 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_bright3) #5
  %call184 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_bright4) #5
  %call185 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_bright5) #5
  %call186 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_bright6) #5
  br label %if.end187

if.end187:                                        ; preds = %if.then164, %if.end158.if.end187_crit_edge
  %contrast189 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 3
  %76 = ptrtoint ptr %contrast189 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %contrast189, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %77)
  %cmp191.not = icmp eq i16 %13, %77
  br i1 %cmp191.not, label %lor.lhs.false193, label %if.end187.if.then199_crit_edge

if.end187.if.then199_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then199

lor.lhs.false193:                                 ; preds = %if.end187
  %gamma195 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 4
  %78 = ptrtoint ptr %gamma195 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %gamma195, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %79)
  %cmp197.not = icmp eq i16 %15, %79
  br i1 %cmp197.not, label %lor.lhs.false193.if.end252_crit_edge, label %lor.lhs.false193.if.then199_crit_edge

lor.lhs.false193.if.then199_crit_edge:            ; preds = %lor.lhs.false193
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then199

lor.lhs.false193.if.end252_crit_edge:             ; preds = %lor.lhs.false193
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end252

if.then199:                                       ; preds = %lor.lhs.false193.if.then199_crit_edge, %if.end187.if.then199_crit_edge
  %80 = ptrtoint ptr %contrast189 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %13, ptr %contrast189, align 2
  %contrast207 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 3
  %81 = ptrtoint ptr %contrast207 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %contrast207, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %82)
  %cmp209 = icmp ugt i16 %13, %82
  %narrow468 = select i1 %cmp209, i16 0, i16 %13
  %cntr.0 = trunc i16 %narrow468 to i8
  %gamma215 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 4
  %83 = ptrtoint ptr %gamma215 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %15, ptr %gamma215, align 4
  %gamma220 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 4
  %84 = ptrtoint ptr %gamma220 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %gamma220, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %85)
  %cmp222 = icmp ugt i16 %15, %85
  %86 = trunc i16 %15 to i8
  %gam.0 = select i1 %cmp222, i8 0, i8 %86
  %arrayidx226 = getelementptr inbounds [3 x i8], ptr %dat_multi1, i32 0, i32 2
  %87 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 109, ptr %arrayidx226, align 1
  %arrayidx231 = getelementptr inbounds [3 x i8], ptr %dat_multi3, i32 0, i32 2
  %88 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 110, ptr %arrayidx231, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %narrow468)
  %cmp232 = icmp eq i16 %narrow468, 0
  %cntr.0.op = shl i8 %cntr.0, 4
  %cntr.0.op.op = or i8 %cntr.0.op, 2
  %add237 = select i1 %cmp232, i8 66, i8 %cntr.0.op.op
  %sub238 = sub i8 %add237, %gam.0
  %arrayidx240 = getelementptr inbounds [3 x i8], ptr %dat_multi2, i32 0, i32 2
  %89 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %sub238, ptr %arrayidx240, align 1
  %arrayidx241 = getelementptr inbounds [3 x i8], ptr %dat_multi4, i32 0, i32 2
  %90 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %sub238, ptr %arrayidx241, align 1
  %call243 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi1) #5
  %call245 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi2) #5
  %call247 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi3) #5
  %call249 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi4) #5
  %call250 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_multi5) #5
  %call251 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_multi6) #5
  br label %if.end252

if.end252:                                        ; preds = %if.then199, %lor.lhs.false193.if.end252_crit_edge
  %91 = ptrtoint ptr %vold to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %vold, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %92)
  %cmp256.not = icmp eq i16 %7, %92
  br i1 %cmp256.not, label %if.end252.if.end291_crit_edge, label %if.then258

if.end252.if.end291_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end291

if.then258:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %vold to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %7, ptr %vold, align 4
  %vmax265 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %94 = ptrtoint ptr %vmax265 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %vmax265, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %95)
  %cmp268 = icmp ugt i16 %7, %95
  %backlight.0 = select i1 %cmp268, i8 0, i8 %conv2
  %arrayidx272 = getelementptr inbounds [3 x i8], ptr %dat_multi1, i32 0, i32 2
  %96 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -99, ptr %arrayidx272, align 1
  %arrayidx277 = getelementptr inbounds [3 x i8], ptr %dat_multi3, i32 0, i32 2
  %97 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -98, ptr %arrayidx277, align 1
  %arrayidx279 = getelementptr inbounds [3 x i8], ptr %dat_multi2, i32 0, i32 2
  %98 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %backlight.0, ptr %arrayidx279, align 1
  %arrayidx280 = getelementptr inbounds [3 x i8], ptr %dat_multi4, i32 0, i32 2
  %99 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %backlight.0, ptr %arrayidx280, align 1
  %call282 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi1) #5
  %call284 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi2) #5
  %call286 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi3) #5
  %call288 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi4) #5
  %call289 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_multi5) #5
  %call290 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_multi6) #5
  br label %if.end291

if.end291:                                        ; preds = %if.then258, %if.end252.if.end291_crit_edge
  %sharpness293 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 2
  %100 = ptrtoint ptr %sharpness293 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %sharpness293, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %101)
  %cmp295.not = icmp eq i16 %11, %101
  br i1 %cmp295.not, label %if.end291.if.end315_crit_edge, label %if.then297

if.end291.if.end315_crit_edge:                    ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end315

if.then297:                                       ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %sharpness293 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %11, ptr %sharpness293, align 4
  %sharpness305 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 2
  %103 = ptrtoint ptr %sharpness305 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %sharpness305, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %104)
  %cmp307 = icmp ugt i16 %11, %104
  %sharp.0 = select i1 %cmp307, i8 0, i8 %conv6
  %arrayidx312 = getelementptr inbounds [3 x i8], ptr %dat_sharp, i32 0, i32 1
  %105 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %sharp.0, ptr %arrayidx312, align 1
  %call314 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 50, i32 noundef 3, ptr noundef nonnull %dat_sharp) #5
  br label %if.end315

if.end315:                                        ; preds = %if.then297, %if.end291.if.end315_crit_edge
  %hue317 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 5
  %106 = ptrtoint ptr %hue317 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %hue317, align 2
  %108 = zext i1 %cmp to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %107, i16 %108)
  %cmp319.not = icmp eq i16 %107, %108
  br i1 %cmp319.not, label %if.end315.cleanup_crit_edge, label %if.then321

if.end315.cleanup_crit_edge:                      ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then321:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #7
  %conv322 = zext i1 %cmp to i8
  %swapRB = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %109 = ptrtoint ptr %swapRB to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv322, ptr %swapRB, align 8
  %110 = ptrtoint ptr %hue317 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %108, ptr %hue317, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then321, %if.end315.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_wbal2) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_hvflip4) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_hvflip2) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_multi4) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_multi3) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_multi2) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_multi1) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_freq2) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_bright2) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_sharp) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mi2020_init_at_startup(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %c = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c) #5
  %0 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %c, align 1, !annotation !85
  %call = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 0, i16 noundef zeroext 4, i32 noundef 1, ptr noundef nonnull %c) #5
  %call1 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 0, i16 noundef zeroext 4, i32 noundef 1, ptr noundef nonnull %c) #5
  %call2 = call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_at_startup, i32 noundef 10) #5
  %call3 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 31232, i16 noundef zeroext -32720, i32 noundef 0, ptr noundef null) #5
  %call4 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 31232, i16 noundef zeroext -32720, i32 noundef 1, ptr noundef nonnull %c) #5
  %call.i = call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_common_0B, i32 noundef 11) #5
  call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_common_3B, i32 noundef 259) #5
  %call1.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 65, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #5
  call void @msleep(i32 noundef 61) #5
  %call5 = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c) #5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mi2020_configure_alt(ptr nocapture noundef %gspca_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
define internal i32 @mi2020_init_pre_alt(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %dat_freq2.i = alloca [3 x i8], align 2
  %dat_multi1.i = alloca [3 x i8], align 2
  %dat_multi2.i = alloca [3 x i8], align 1
  %dat_multi3.i = alloca [3 x i8], align 2
  %dat_multi4.i = alloca [3 x i8], align 1
  %dat_hvflip2.i = alloca [3 x i8], align 2
  %dat_hvflip4.i = alloca [3 x i8], align 2
  %dat_wbal2.i = alloca [3 x i8], align 1
  %c.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mirrorMask = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %mirrorMask to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %mirrorMask, align 1
  %vold = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %hue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 5
  %1 = ptrtoint ptr %hue to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %hue, align 2
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %brightness, align 2
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %sharpness to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %sharpness, align 4
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %contrast to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %contrast, align 2
  %gamma = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %gamma to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %gamma, align 4
  %6 = ptrtoint ptr %vold to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %vold, align 4
  %cam.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %7 = ptrtoint ptr %cam.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cam.i, align 4
  %curr_mode.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %9 = ptrtoint ptr %curr_mode.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %curr_mode.i, align 1
  %conv.i = zext i8 %10 to i32
  %priv.i = getelementptr %struct.v4l2_pix_format, ptr %8, i32 %conv.i, i32 7
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %priv.i, align 4
  %mirror1.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 8
  %13 = ptrtoint ptr %mirror1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mirror1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.i = icmp ne i8 %14, 0
  %flip8.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 9
  %15 = ptrtoint ptr %flip8.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flip8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp10.i = icmp ne i8 %16, 0
  %AC50Hz.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 10
  %17 = ptrtoint ptr %AC50Hz.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %AC50Hz.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp19.i = icmp ne i8 %18, 0
  %whitebal.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 7
  %19 = ptrtoint ptr %whitebal.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %whitebal.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_freq2.i) #5
  %21 = ptrtoint ptr %dat_freq2.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -28672, ptr %dat_freq2.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_multi1.i) #5
  %22 = ptrtoint ptr %dat_multi1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -29529, ptr %dat_multi1.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_multi2.i) #5
  %23 = call ptr @memcpy(ptr %dat_multi2.i, ptr @__const.mi2020_camera_settings.dat_wbal2, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_multi3.i) #5
  %24 = ptrtoint ptr %dat_multi3.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -29529, ptr %dat_multi3.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_multi4.i) #5
  %25 = call ptr @memcpy(ptr %dat_multi4.i, ptr @__const.mi2020_camera_settings.dat_wbal2, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_hvflip2.i) #5
  %26 = ptrtoint ptr %dat_hvflip2.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -28668, ptr %dat_hvflip2.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_hvflip4.i) #5
  %27 = ptrtoint ptr %dat_hvflip4.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -28672, ptr %dat_hvflip4.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dat_wbal2.i) #5
  %28 = call ptr @memcpy(ptr %dat_wbal2.i, ptr @__const.mi2020_camera_settings.dat_wbal2, i32 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i) #5
  %29 = ptrtoint ptr %c.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %c.i, align 1, !annotation !85
  %nbIm.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %30 = ptrtoint ptr %nbIm.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %nbIm.i, align 4
  %conv23.i = select i1 %cmp19.i, i8 -64, i8 -128
  %arrayidx24.i = getelementptr inbounds [3 x i8], ptr %dat_freq2.i, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv23.i, ptr %arrayidx24.i, align 2
  %arrayidx25.i = getelementptr inbounds [3 x i8], ptr %dat_multi1.i, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -99, ptr %arrayidx25.i, align 2
  %arrayidx29.i = getelementptr inbounds [3 x i8], ptr %dat_multi3.i, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -98, ptr %arrayidx29.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %20)
  %34 = icmp ult i16 %20, 3
  br i1 %34, label %switch.lookup, label %entry.if.end49.i_crit_edge

entry.if.end49.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.cast = zext i16 %20 to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 2097152, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %switch.cast13 = zext i16 %20 to i24
  %switch.shiftamt14 = shl nuw nsw i24 %switch.cast13, 3
  %switch.downshift15 = lshr i24 1520919, %switch.shiftamt14
  %switch.masked16 = trunc i24 %switch.downshift15 to i8
  %arrayidx38.i = getelementptr inbounds [3 x i8], ptr %dat_multi2.i, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %switch.masked, ptr %arrayidx38.i, align 1
  %arrayidx39.i = getelementptr inbounds [3 x i8], ptr %dat_multi4.i, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %switch.masked, ptr %arrayidx39.i, align 1
  %arrayidx40.i = getelementptr inbounds [3 x i8], ptr %dat_wbal2.i, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %switch.masked16, ptr %arrayidx40.i, align 1
  br label %if.end49.i

if.end49.i:                                       ; preds = %switch.lookup, %entry.if.end49.i_crit_edge
  %mul.i = select i1 %cmp10.i, i8 0, i8 2
  %not.cmp5.i = xor i1 %cmp.i, true
  %sub51.i = zext i1 %not.cmp5.i to i8
  %add50.i = or i8 %mul.i, %sub51.i
  %conv53.i = or i8 %add50.i, 108
  %arrayidx54.i = getelementptr inbounds [3 x i8], ptr %dat_hvflip2.i, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv53.i, ptr %arrayidx54.i, align 2
  %conv60.i = or i8 %add50.i, 36
  %arrayidx61.i = getelementptr inbounds [3 x i8], ptr %dat_hvflip4.i, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv60.i, ptr %arrayidx61.i, align 2
  tail call void @msleep(i32 noundef 200) #5
  %call.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 5, i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #5
  tail call void @msleep(i32 noundef 2) #5
  %call.i.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_common_0B, i32 noundef 11) #5
  tail call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_common_3B, i32 noundef 259) #5
  %call1.i.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 65, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #5
  tail call void @msleep(i32 noundef 142) #5
  %call62.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 16, i16 noundef zeroext 16, i32 noundef 0, ptr noundef null) #5
  %call63.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 3, i16 noundef zeroext 193, i32 noundef 0, ptr noundef null) #5
  %call64.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 66, i16 noundef zeroext 194, i32 noundef 0, ptr noundef null) #5
  %call65.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 106, i16 noundef zeroext 13, i32 noundef 0, ptr noundef null) #5
  %40 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.end49.i.sw.epilog.i_crit_edge [
    i32 0, label %if.end72.i
    i32 1, label %if.then75.i
    i32 2, label %if.end49.i.if.end95.i_crit_edge
    i32 3, label %if.else89.i
  ]

if.end49.i.if.end95.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95.i

if.end49.i.sw.epilog.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end72.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  %call69.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 512, i32 noundef 12, ptr noundef nonnull @.str.6) #5
  tail call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt_low1, i32 noundef 16) #5
  br label %if.end76.i

if.then75.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  %call71.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 512, i32 noundef 12, ptr noundef nonnull @.str.7) #5
  tail call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt_low1, i32 noundef 16) #5
  tail call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt_low2, i32 noundef 10) #5
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then75.i, %if.end72.i
  tail call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt_low3, i32 noundef 42) #5
  br label %sw.epilog.sink.split.i

if.else89.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.else89.i, %if.end49.i.if.end95.i_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.9, %if.else89.i ], [ @.str.8, %if.end49.i.if.end95.i_crit_edge ]
  %.str.4.sink.i = phi ptr [ @.str.4, %if.else89.i ], [ @.str.1, %if.end49.i.if.end95.i_crit_edge ]
  %.str.5.sink.i = phi ptr [ @.str.5, %if.else89.i ], [ @.str.3, %if.end49.i.if.end95.i_crit_edge ]
  %call90.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 512, i32 noundef 12, ptr noundef nonnull %.str.9.sink.i) #5
  %call91.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @.str) #5
  %call92.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %.str.4.sink.i) #5
  %call93.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @.str.2) #5
  %call94.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %.str.5.sink.i) #5
  tail call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt_big, i32 noundef 56) #5
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.end95.i, %if.end76.i
  %.sink5.i = phi i16 [ 1, %if.end95.i ], [ 16, %if.end76.i ]
  %.sink4.i = phi i32 [ 1850, %if.end95.i ], [ 120, %if.end76.i ]
  %call96.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext %.sink5.i, i16 noundef zeroext 16, i32 noundef 0, ptr noundef null) #5
  %call97.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 0, i16 noundef zeroext 193, i32 noundef 0, ptr noundef null) #5
  %call98.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 65, i16 noundef zeroext 194, i32 noundef 0, ptr noundef null) #5
  tail call void @msleep(i32 noundef %.sink4.i) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end49.i.sw.epilog.i_crit_edge
  %call99.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 64, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #5
  tail call void @msleep(i32 noundef 40) #5
  %call100.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_freq1) #5
  %call101.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_freq2.i) #5
  call void @msleep(i32 noundef 33) #5
  %call103.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi1.i) #5
  %call105.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi2.i) #5
  %call107.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi3.i) #5
  %call109.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_multi4.i) #5
  %call110.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_wbal1) #5
  %call112.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_wbal2.i) #5
  %call113.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_multi5) #5
  %call114.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_multi6) #5
  call void @msleep(i32 noundef 7) #5
  %call115.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %c.i) #5
  call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt_3B, i32 noundef 78) #5
  %call116.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_hvflip1) #5
  %call118.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_hvflip2.i) #5
  %call119.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_hvflip3) #5
  %call121.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull %dat_hvflip4.i) #5
  %call122.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_hvflip5) #5
  %call123.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 31232, i16 noundef zeroext 51, i32 noundef 3, ptr noundef nonnull @dat_hvflip6) #5
  call void @msleep(i32 noundef 250) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %switch.i = icmp ult i32 %12, 2
  br i1 %switch.i, label %if.then128.i, label %if.else129.i

if.then128.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_middle_hvflip_low, i32 noundef 8) #5
  br label %mi2020_init_post_alt.exit

if.else129.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_middle_hvflip_big, i32 noundef 13) #5
  br label %mi2020_init_post_alt.exit

mi2020_init_post_alt.exit:                        ; preds = %if.else129.i, %if.then128.i
  %41 = zext i1 %cmp10.i to i8
  %42 = zext i1 %cmp.i to i8
  call void @fetch_idxdata(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_end_hvflip, i32 noundef 11) #5
  %43 = ptrtoint ptr %nbIm.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %nbIm.i, align 4
  %mirror133.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 8
  %44 = ptrtoint ptr %mirror133.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %42, ptr %mirror133.i, align 4
  %flip136.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 9
  %45 = ptrtoint ptr %flip136.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %41, ptr %flip136.i, align 1
  %conv137.i = zext i1 %cmp19.i to i8
  %AC50Hz139.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 10
  %46 = ptrtoint ptr %AC50Hz139.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv137.i, ptr %AC50Hz139.i, align 2
  %whitebal142.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 7
  %47 = ptrtoint ptr %whitebal142.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %20, ptr %whitebal142.i, align 2
  %call143.i = call i32 @mi2020_camera_settings(ptr noundef %gspca_dev) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_wbal2.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_hvflip4.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_hvflip2.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_multi4.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_multi3.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_multi2.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_multi1.i) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dat_freq2.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mi2020_post_unset_alt(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 5, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #5
  tail call void @msleep(i32 noundef 40) #5
  %call1 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gl860_RTx(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fetch_validx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fetch_idxdata(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @tbl_init_at_startup, !1, !"tbl_init_at_startup", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 61, i32 22}
!2 = !{ptr @tbl_common_0B, !3, !"tbl_common_0B", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 68, i32 22}
!4 = !{ptr @tbl_common_3B, !5, !"tbl_common_3B", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 74, i32 23}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 521, i32 9}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 523, i32 9}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 525, i32 9}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 527, i32 9}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 534, i32 9}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 538, i32 9}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 338, i32 23}
!20 = distinct !{null, !21, !"dat_640", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 338, i32 12}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 339, i32 23}
!24 = distinct !{null, !25, !"dat_800", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 339, i32 12}
!26 = !{ptr @tbl_init_post_alt_low1, !27, !"tbl_init_post_alt_low1", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 211, i32 23}
!28 = !{ptr @tbl_init_post_alt_low2, !29, !"tbl_init_post_alt_low2", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 222, i32 23}
!30 = !{ptr @tbl_init_post_alt_low3, !31, !"tbl_init_post_alt_low3", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 231, i32 23}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 340, i32 23}
!34 = distinct !{null, !35, !"dat_1280", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 340, i32 12}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 341, i32 23}
!38 = distinct !{null, !39, !"dat_1600", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 341, i32 12}
!40 = !{ptr @tbl_init_post_alt_big, !41, !"tbl_init_post_alt_big", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 259, i32 23}
!42 = !{ptr @dat_freq1, !43, !"dat_freq1", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 56, i32 11}
!44 = !{ptr @dat_wbal1, !45, !"dat_wbal1", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 12, i32 11}
!46 = !{ptr @dat_multi5, !47, !"dat_multi5", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 58, i32 11}
!48 = !{ptr @dat_multi6, !49, !"dat_multi6", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 59, i32 11}
!50 = !{ptr @tbl_init_post_alt_3B, !51, !"tbl_init_post_alt_3B", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 296, i32 23}
!52 = !{ptr @dat_hvflip1, !53, !"dat_hvflip1", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 20, i32 11}
!54 = !{ptr @dat_hvflip3, !55, !"dat_hvflip3", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 21, i32 11}
!56 = !{ptr @dat_hvflip5, !57, !"dat_hvflip5", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 22, i32 11}
!58 = !{ptr @dat_hvflip6, !59, !"dat_hvflip6", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 23, i32 11}
!60 = !{ptr @tbl_middle_hvflip_low, !61, !"tbl_middle_hvflip_low", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 25, i32 23}
!62 = !{ptr @tbl_middle_hvflip_big, !63, !"tbl_middle_hvflip_big", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 36, i32 23}
!64 = !{ptr @tbl_end_hvflip, !65, !"tbl_end_hvflip", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 46, i32 23}
!66 = !{ptr @dat_bright1, !67, !"dat_bright1", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 14, i32 11}
!68 = !{ptr @dat_bright3, !69, !"dat_bright3", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 15, i32 11}
!70 = !{ptr @dat_bright4, !71, !"dat_bright4", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 16, i32 11}
!72 = !{ptr @dat_bright5, !73, !"dat_bright5", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 17, i32 11}
!74 = !{ptr @dat_bright6, !75, !"dat_bright6", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/gspca/gl860/gl860-mi2020.c", i32 18, i32 11}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
