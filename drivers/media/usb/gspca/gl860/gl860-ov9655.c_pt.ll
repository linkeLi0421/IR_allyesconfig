; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/gl860/gl860-ov9655.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/gl860/gl860-ov9655.c"
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

@tbl_init_at_startup = internal global { [8 x %struct.validx], [32 x i8] } { [8 x %struct.validx] [%struct.validx zeroinitializer, %struct.validx { i16 16, i16 16 }, %struct.validx { i16 8, i16 192 }, %struct.validx { i16 1, i16 193 }, %struct.validx { i16 1, i16 194 }, %struct.validx { i16 32, i16 6 }, %struct.validx { i16 106, i16 13 }, %struct.validx { i16 64, i16 0 }], [32 x i8] zeroinitializer }, align 32
@tbl_commmon = internal global { [16 x %struct.validx], [32 x i8] } { [16 x %struct.validx] [%struct.validx { i16 65, i16 0 }, %struct.validx { i16 106, i16 7 }, %struct.validx { i16 99, i16 6 }, %struct.validx { i16 106, i16 13 }, %struct.validx { i16 0, i16 192 }, %struct.validx { i16 16, i16 16 }, %struct.validx { i16 1, i16 193 }, %struct.validx { i16 65, i16 194 }, %struct.validx { i16 4, i16 216 }, %struct.validx { i16 18, i16 4 }, %struct.validx { i16 0, i16 88 }, %struct.validx { i16 64, i16 0 }, %struct.validx { i16 243, i16 6 }, %struct.validx { i16 88, i16 0 }, %struct.validx { i16 72, i16 0 }, %struct.validx { i16 97, i16 0 }], [32 x i8] zeroinitializer }, align 32
@tbl_init_post_alt = internal global { [45 x %struct.validx], [44 x i8] } { [45 x %struct.validx] [%struct.validx { i16 24626, i16 255 }, %struct.validx { i16 24626, i16 255 }, %struct.validx { i16 24626, i16 255 }, %struct.validx { i16 24636, i16 255 }, %struct.validx { i16 24579, i16 255 }, %struct.validx { i16 24626, i16 255 }, %struct.validx { i16 24626, i16 255 }, %struct.validx { i16 24577, i16 255 }, %struct.validx { i16 24576, i16 -32738 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 24580, i16 30 }, %struct.validx { i16 24576, i16 -32738 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 24580, i16 30 }, %struct.validx { i16 24594, i16 3 }, %struct.validx { i16 24576, i16 -32738 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 24580, i16 30 }, %struct.validx { i16 24576, i16 -32738 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 24580, i16 30 }, %struct.validx { i16 24594, i16 3 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 24576, i16 -32738 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 24580, i16 30 }, %struct.validx { i16 24576, i16 -32738 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 24580, i16 30 }, %struct.validx { i16 24594, i16 3 }, %struct.validx { i16 24576, i16 -32738 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 24580, i16 30 }, %struct.validx { i16 24576, i16 -32738 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 24580, i16 30 }, %struct.validx { i16 24594, i16 3 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 24576, i16 -32738 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 24580, i16 30 }, %struct.validx { i16 24576, i16 -32738 }, %struct.validx { i16 -1, i16 -1 }, %struct.validx { i16 24580, i16 30 }, %struct.validx { i16 24594, i16 3 }], [44 x i8] zeroinitializer }, align 32
@c04 = internal global { [1 x i8], [31 x i8] } { [1 x i8] c"\04", [31 x i8] zeroinitializer }, align 32
@dat_post1 = internal global { [9 x i8], [23 x i8] } { [9 x i8] c"\04\00\10 \A1\00\00\02\00", [23 x i8] zeroinitializer }, align 32
@dat_post2 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\10\10\C1\02\00", [27 x i8] zeroinitializer }, align 32
@dat_post3 = internal global { [9 x i8], [23 x i8] } { [9 x i8] c"\04\00\10|\A1\00\00\04\00", [23 x i8] zeroinitializer }, align 32
@dat_post4 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\10\02\C1\06\00", [27 x i8] zeroinitializer }, align 32
@dat_post5 = internal global { [9 x i8], [23 x i8] } { [9 x i8] c"\04\00\10{\A1\00\00\08\00", [23 x i8] zeroinitializer }, align 32
@dat_post6 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\10\10\C1\05\00", [27 x i8] zeroinitializer }, align 32
@dat_post7 = internal global { [9 x i8], [23 x i8] } { [9 x i8] c"\04\00\10|\A1\00\00\08\00", [23 x i8] zeroinitializer }, align 32
@dat_post8 = internal global { [9 x i8], [23 x i8] } { [9 x i8] c"\04\00\10|\A1\00\00\09\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [12 x i8], [20 x i8] } { [12 x i8] c"\00@\07j\06\F3\0Dj\10\10\C1\01", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal global { [56 x i8], [40 x i8] } { [56 x i8] c"\12\80\00\00\01\98\02\80\03\12\04\03\0BW\0Ea\0FB\11\01\12`\13\00\14:\16$\17\14\18\00\19\01\1A=\1E\04$<%6&r'\08(\08)\15*\00+\00,\08", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { [52 x i8], [44 x i8] } { [52 x i8] c"2\FF3\004=5\006\FA8r9W:\00;\0C=\99>\0C?\C1@\C0A\00B\C0C\0AD\F0EFFbG*H<J\EEK\E7L\E7M\E7N\E7", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { [54 x i8], [42 x i8] } { [54 x i8] c"O\98P\98Q\00R(SpT\98X\1AY\85Z\A9[d\\\84]S^\0E_\F0`\F0a\F0b\00c\00d\02e f\00i\0AkZl\04mUn\00o\9D", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { [56 x i8], [40 x i8] } { [56 x i8] c"p\15qxr\00s\00t:u5v\01w\02z${\04|\07}\10~(\7F6\80D\81R\82`\83l\84x\85\8C\86\9E\87\BB\88\D2\89\E5\8A#\8C\8D\90|\91{", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [42 x i8], [54 x i8] } { [42 x i8] c"\9D\02\9E\02\9Ft\A0s\A1@\A4P\A5h\A6p\A8\C1\A9\EF\AA\92\AB\04\AC\80\AD\80\AE\80\AF\80\B2\F2\B3 \B4 \B5\00\B6\AF", [54 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\BB\AE\BCO\BDN\BEj\BFh\C0\AA\C1\C0\C2\01\C3N\C6\85\C7\81\C9\E0\CA\E8\CB\F0\CC\D8\CD\93", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { [12 x i8], [20 x i8] } { [12 x i8] c"\D0\01\D1\08\D2\E0\D3\01\D4\10\D5\80", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { [12 x i8], [20 x i8] } { [12 x i8] c"\00@\07j\06\F3\0Dj\10\10\C1\01", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { [56 x i8], [40 x i8] } { [56 x i8] c"\12\80\00\00\01\98\02\80\03\12\04\01\0BW\0Ea\0FB\11\00\12\00\13\00\14:\16$\17\1B\18\BB\19\01\1A\81\1E\04$<%6&r'\08(\08)\15*\00+\00,\08", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { [52 x i8], [44 x i8] } { [52 x i8] c"2\A43\004=5\006\F88r9W:\00;\0C=\99>\0C?\C2@\C0A\00B\C0C\0AD\F0EFFbG*H<J\ECK\E8L\E8M\E8N\E8", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { [54 x i8], [42 x i8] } { [54 x i8] c"O\98P\98Q\00R(SpT\98X\1AY\85Z\A9[d\\\84]S^\0E_\F0`\F0a\F0b\00c\00d\02e f\00i\02kZl\04mUn\00o\9D", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { [56 x i8], [40 x i8] } { [56 x i8] c"p\08qxr\00s\01t:u5v\01w\02z${\04|\07}\10~(\7F6\80D\81R\82`\83l\84x\85\8C\86\9E\87\BB\88\D2\89\E5\8A#\8C\0D\90\90\91\90", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { [42 x i8], [54 x i8] } { [42 x i8] c"\9D\02\9E\02\9F\94\A0\94\A1\01\A4P\A5h\A6p\A8\C1\A9\EF\AA\92\AB\04\AC\80\AD\80\AE\80\AF\80\B2\F2\B3 \B4 \B5\00\B6\AF", [54 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\BB\AE\BC8\BD9\BE\01\BF\01\C0\E2\C1\C0\C2\01\C3N\C6\85\C7\81\C9\E0\CA\E8\CB\F0\CC\D8\CD\93", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { [12 x i8], [20 x i8] } { [12 x i8] c"\D0!\D1\18\D2\E0\D3\01\D4(\D5\00", [20 x i8] zeroinitializer }, align 32
@__const.ov9655_camera_settings.dat_bright = private unnamed_addr constant [9 x i8] c"\04\00\10|\A1\00\00p\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"tbl_init_at_startup\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 11, i32 22 }
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"tbl_commmon\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 18, i32 22 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"tbl_init_post_alt\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 152, i32 22 }
@___asan_gen_.25 = private unnamed_addr constant [4 x i8] c"c04\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 142, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [10 x i8] c"dat_post1\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 143, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [10 x i8] c"dat_post2\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 144, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"dat_post3\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 145, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"dat_post4\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 146, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"dat_post5\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 147, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"dat_post6\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 148, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"dat_post7\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 149, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"dat_post8\00", align 1
@___asan_gen_.50 = private constant [48 x i8] c"../drivers/media/usb/gspca/gl860/gl860-ov9655.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 150, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @tbl_init_at_startup, ptr @tbl_commmon, ptr @tbl_init_post_alt, ptr @c04, ptr @dat_post1, ptr @dat_post2, ptr @dat_post3, ptr @dat_post4, ptr @dat_post5, ptr @dat_post6, ptr @dat_post7, ptr @dat_post8, ptr @.compoundliteral, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_init_at_startup to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_commmon to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbl_init_post_alt to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c04 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_post1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_post2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_post3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_post4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_post5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_post6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_post7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dat_post8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ov9655_init_settings(ptr noundef writeonly %gspca_dev) local_unnamed_addr #0 align 64 {
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
  store i16 128, ptr %brightness, align 2
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %vmax = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %vmax to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %vmax, align 8
  %brightness10 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %3 = call ptr @memset(ptr %sharpness, i32 0, i32 12)
  %4 = ptrtoint ptr %brightness10 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 255, ptr %brightness10, align 2
  %sharpness12 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %sharpness12 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %sharpness12, align 4
  %contrast14 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %contrast14 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %contrast14, align 2
  %gamma16 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %gamma16 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %gamma16, align 8
  %hue18 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %hue18 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %hue18, align 2
  %saturation20 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 6
  %dev_camera_settings = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %9 = call ptr @memset(ptr %saturation20, i32 0, i32 7)
  %10 = ptrtoint ptr %dev_camera_settings to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ov9655_camera_settings, ptr %dev_camera_settings, align 4
  %dev_init_at_startup = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %11 = ptrtoint ptr %dev_init_at_startup to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ov9655_init_at_startup, ptr %dev_init_at_startup, align 8
  %dev_configure_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %12 = ptrtoint ptr %dev_configure_alt to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ov9655_configure_alt, ptr %dev_configure_alt, align 4
  %dev_init_pre_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %13 = ptrtoint ptr %dev_init_pre_alt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ov9655_init_pre_alt, ptr %dev_init_pre_alt, align 4
  %dev_post_unset_alt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %14 = ptrtoint ptr %dev_post_unset_alt to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ov9655_post_unset_alt, ptr %dev_post_unset_alt, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9655_camera_settings(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %dat_bright = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %dat_bright) #5
  %0 = call ptr @memcpy(ptr %dat_bright, ptr @__const.ov9655_camera_settings.dat_bright, i32 9)
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %brightness to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %brightness, align 2
  %hue2 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %hue2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hue2, align 2
  %brightness4 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %brightness4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %brightness4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %6)
  %cmp.not = icmp eq i16 %2, %6
  br i1 %cmp.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i16 %2 to i8
  %7 = ptrtoint ptr %brightness4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %2, ptr %brightness4, align 2
  %brightness12 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %brightness12 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %brightness12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %9)
  %cmp14 = icmp ugt i16 %2, %9
  %bright.0 = select i1 %cmp14, i8 0, i8 %conv
  %arrayidx = getelementptr inbounds [9 x i8], ptr %dat_bright, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bright.0, ptr %arrayidx, align 1
  %call = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 8, ptr noundef nonnull %dat_bright) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then, %entry.if.end18_crit_edge
  %hue20 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 5
  %11 = ptrtoint ptr %hue20 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hue20, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %12)
  %cmp22.not = icmp eq i16 %4, %12
  br i1 %cmp22.not, label %if.end18.if.end31_crit_edge, label %if.then24

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %hue20 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %4, ptr %hue20, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp28 = icmp ne i16 %4, 0
  %conv30 = zext i1 %cmp28 to i8
  %swapRB = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %14 = ptrtoint ptr %swapRB to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv30, ptr %swapRB, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %if.end18.if.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %dat_bright) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9655_init_at_startup(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_at_startup, i32 noundef 8) #5
  %call1 = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_commmon, i32 noundef 16) #5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ov9655_configure_alt(ptr nocapture noundef %gspca_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %0, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9655_init_pre_alt(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %dat_bright.i.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %brightness to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %brightness, align 2
  %hue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 5
  %1 = ptrtoint ptr %hue to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %hue, align 2
  %call = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_commmon, i32 noundef 16) #5
  %cam.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
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
  %call.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 5, i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %8 = select i1 %cmp.i, ptr @.compoundliteral, ptr @.compoundliteral.8
  %call3.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 512, i32 noundef 12, ptr noundef nonnull %8) #5
  %9 = select i1 %cmp.i, ptr @.compoundliteral.1, ptr @.compoundliteral.9
  %call8.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 56, ptr noundef nonnull %9) #5
  %10 = select i1 %cmp.i, ptr @.compoundliteral.2, ptr @.compoundliteral.10
  %call8.1.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 52, ptr noundef nonnull %10) #5
  %11 = select i1 %cmp.i, ptr @.compoundliteral.3, ptr @.compoundliteral.11
  %call8.2.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 54, ptr noundef nonnull %11) #5
  %12 = select i1 %cmp.i, ptr @.compoundliteral.4, ptr @.compoundliteral.12
  %call8.3.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 56, ptr noundef nonnull %12) #5
  %13 = select i1 %cmp.i, ptr @.compoundliteral.5, ptr @.compoundliteral.13
  %call8.4.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 42, ptr noundef nonnull %13) #5
  %14 = select i1 %cmp.i, ptr @.compoundliteral.6, ptr @.compoundliteral.14
  %call8.5.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 32, ptr noundef nonnull %14) #5
  %15 = select i1 %cmp.i, ptr @.compoundliteral.7, ptr @.compoundliteral.15
  %call10.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 512, i32 noundef 12, ptr noundef nonnull %15) #5
  %call11.i = tail call i32 @fetch_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt, i32 noundef 45) #5
  %call12.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 24576, i16 noundef zeroext -32738, i32 noundef 1, ptr noundef nonnull @c04) #5
  %call13.i = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt, i32 noundef 45, i32 noundef %call11.i) #5
  %call14.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 24576, i16 noundef zeroext -32738, i32 noundef 1, ptr noundef nonnull @c04) #5
  %call15.i = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt, i32 noundef 45, i32 noundef %call11.i) #5
  %call16.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 24576, i16 noundef zeroext -32738, i32 noundef 1, ptr noundef nonnull @c04) #5
  %call17.i = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt, i32 noundef 45, i32 noundef %call11.i) #5
  %call18.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 24576, i16 noundef zeroext -32738, i32 noundef 1, ptr noundef nonnull @c04) #5
  %call19.i = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt, i32 noundef 45, i32 noundef %call11.i) #5
  %call20.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 8, ptr noundef nonnull @dat_post1) #5
  %call21.i = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt, i32 noundef 45, i32 noundef %call11.i) #5
  %call22.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 24576, i16 noundef zeroext -32738, i32 noundef 1, ptr noundef nonnull @c04) #5
  %call23.i = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt, i32 noundef 45, i32 noundef %call11.i) #5
  %call24.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 24576, i16 noundef zeroext -32738, i32 noundef 1, ptr noundef nonnull @c04) #5
  %call25.i = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt, i32 noundef 45, i32 noundef %call11.i) #5
  %call26.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 24576, i16 noundef zeroext -32738, i32 noundef 1, ptr noundef nonnull @c04) #5
  %call27.i = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt, i32 noundef 45, i32 noundef %call11.i) #5
  %call28.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 24576, i16 noundef zeroext -32738, i32 noundef 1, ptr noundef nonnull @c04) #5
  %call29.i = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt, i32 noundef 45, i32 noundef %call11.i) #5
  %call30.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 8, ptr noundef nonnull @dat_post1) #5
  %call31.i = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt, i32 noundef 45, i32 noundef %call11.i) #5
  %call32.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 24576, i16 noundef zeroext -32738, i32 noundef 1, ptr noundef nonnull @c04) #5
  %call33.i = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt, i32 noundef 45, i32 noundef %call11.i) #5
  %call34.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext -64, i32 noundef 2, i16 noundef zeroext 24576, i16 noundef zeroext -32738, i32 noundef 1, ptr noundef nonnull @c04) #5
  %call35.i = tail call i32 @keep_on_fetching_validx(ptr noundef %gspca_dev, ptr noundef nonnull @tbl_init_post_alt, i32 noundef 45, i32 noundef %call11.i) #5
  %call36.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 8, ptr noundef nonnull @dat_post1) #5
  %call37.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 512, i32 noundef 4, ptr noundef nonnull @dat_post2) #5
  %call38.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 8, ptr noundef nonnull @dat_post3) #5
  %call39.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 512, i32 noundef 4, ptr noundef nonnull @dat_post4) #5
  %call40.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 8, ptr noundef nonnull @dat_post5) #5
  %call41.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 512, i32 noundef 4, ptr noundef nonnull @dat_post6) #5
  %call42.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 8, ptr noundef nonnull @dat_post7) #5
  %call43.i = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 8, ptr noundef nonnull @dat_post8) #5
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %dat_bright.i.i) #5
  %16 = call ptr @memcpy(ptr %dat_bright.i.i, ptr @__const.ov9655_camera_settings.dat_bright, i32 9)
  %brightness.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %brightness.i.i, align 2
  %hue2.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %hue2.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hue2.i.i, align 2
  %21 = ptrtoint ptr %brightness to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %brightness, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %22)
  %cmp.not.i.i = icmp eq i16 %18, %22
  br i1 %cmp.not.i.i, label %entry.if.end18.i.i_crit_edge, label %if.then.i.i

entry.if.end18.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = trunc i16 %18 to i8
  %23 = ptrtoint ptr %brightness to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %18, ptr %brightness, align 2
  %brightness12.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %brightness12.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %brightness12.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %25)
  %cmp14.i.i = icmp ugt i16 %18, %25
  %bright.0.i.i = select i1 %cmp14.i.i, i8 0, i8 %conv.i.i
  %arrayidx.i.i = getelementptr inbounds [9 x i8], ptr %dat_bright.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bright.0.i.i, ptr %arrayidx.i.i, align 1
  %call.i.i = call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 3, i16 noundef zeroext 24576, i16 noundef zeroext 512, i32 noundef 8, ptr noundef nonnull %dat_bright.i.i) #5
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then.i.i, %entry.if.end18.i.i_crit_edge
  %27 = ptrtoint ptr %hue to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hue, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %28)
  %cmp22.not.i.i = icmp eq i16 %20, %28
  br i1 %cmp22.not.i.i, label %if.end18.i.i.ov9655_init_post_alt.exit_crit_edge, label %if.then24.i.i

if.end18.i.i.ov9655_init_post_alt.exit_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ov9655_init_post_alt.exit

if.then24.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %hue to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %20, ptr %hue, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp28.i.i = icmp ne i16 %20, 0
  %conv30.i.i = zext i1 %cmp28.i.i to i8
  %swapRB.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %30 = ptrtoint ptr %swapRB.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv30.i.i, ptr %swapRB.i.i, align 8
  br label %ov9655_init_post_alt.exit

ov9655_init_post_alt.exit:                        ; preds = %if.then24.i.i, %if.end18.i.i.ov9655_init_post_alt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %dat_bright.i.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ov9655_post_unset_alt(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 5, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #5
  %call1 = tail call i32 @gl860_RTx(ptr noundef %gspca_dev, i8 noundef zeroext 64, i32 noundef 1, i16 noundef zeroext 97, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fetch_validx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gl860_RTx(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keep_on_fetching_validx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @tbl_init_at_startup, !1, !"tbl_init_at_startup", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 11, i32 22}
!2 = !{ptr @tbl_commmon, !3, !"tbl_commmon", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 18, i32 22}
!4 = distinct !{null, !5, !"tbl_640", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 27, i32 12}
!6 = distinct !{null, !7, !"tbl_1280", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 81, i32 12}
!8 = distinct !{null, !9, !"tbl_length", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 25, i32 12}
!10 = !{ptr @tbl_init_post_alt, !11, !"tbl_init_post_alt", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 152, i32 22}
!12 = !{ptr @c04, !13, !"c04", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 142, i32 11}
!14 = !{ptr @dat_post1, !15, !"dat_post1", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 143, i32 11}
!16 = !{ptr @dat_post2, !17, !"dat_post2", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 144, i32 11}
!18 = !{ptr @dat_post3, !19, !"dat_post3", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 145, i32 11}
!20 = !{ptr @dat_post4, !21, !"dat_post4", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 146, i32 11}
!22 = !{ptr @dat_post5, !23, !"dat_post5", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 147, i32 11}
!24 = !{ptr @dat_post6, !25, !"dat_post6", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 148, i32 11}
!26 = !{ptr @dat_post7, !27, !"dat_post7", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 149, i32 11}
!28 = !{ptr @dat_post8, !29, !"dat_post8", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/gspca/gl860/gl860-ov9655.c", i32 150, i32 11}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
