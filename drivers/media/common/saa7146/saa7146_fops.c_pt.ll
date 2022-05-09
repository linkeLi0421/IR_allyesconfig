; ModuleID = '/llk/IR_all_yes/drivers/media/common/saa7146/saa7146_fops.c_pt.bc'
source_filename = "../drivers/media/common/saa7146/saa7146_fops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+saa7146_vv_init\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7146_vv_init\09\09\09\09"
module asm "\09.long\09__crc_saa7146_vv_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7146_vv_init:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7146_vv_init\22\09\09\09\09\09"
module asm "__kstrtabns_saa7146_vv_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+saa7146_vv_release\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7146_vv_release\09\09\09\09"
module asm "\09.long\09__crc_saa7146_vv_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7146_vv_release:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7146_vv_release\22\09\09\09\09\09"
module asm "__kstrtabns_saa7146_vv_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+saa7146_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7146_register_device\09\09\09\09"
module asm "\09.long\09__crc_saa7146_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7146_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7146_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_saa7146_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+saa7146_unregister_device\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7146_unregister_device\09\09\09\09"
module asm "\09.long\09__crc_saa7146_unregister_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7146_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7146_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_saa7146_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.saa7146_use_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.saa7146_fh = type { %struct.v4l2_fh, ptr, %struct.videobuf_queue, %struct.videobuf_queue, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.saa7146_dev = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, ptr, i32, [32 x i8], ptr, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.saa7146_dma, %struct.wait_queue_head, i32, %struct.saa7146_dma, %struct.saa7146_dma }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.saa7146_dma = type { i32, ptr }
%struct.saa7146_vv = type { %struct.saa7146_dmaqueue, %struct.v4l2_vbi_format, %struct.timer_list, ptr, %struct.wait_queue_head, i32, ptr, i32, ptr, %struct.saa7146_overlay, %struct.v4l2_framebuffer, ptr, ptr, %struct.saa7146_dmaqueue, %struct.v4l2_pix_format, i32, ptr, i32, i32, i32, i32, %struct.saa7146_dma, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.saa7146_overlay = type { ptr, %struct.v4l2_window, [16 x %struct.v4l2_clip], i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.98 }
%struct.anon.98 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7146_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.93, i32, i32 }
%union.anon.93 = type { i32 }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i64, i32, i32, i32, i32, ptr, i32, ptr }
%struct.saa7146_buf = type { %struct.videobuf_buffer, ptr, ptr, [3 x %struct.saa7146_pgtable] }
%struct.saa7146_pgtable = type { i32, ptr, i32, i32, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.111, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.111 = type { ptr }
%struct.saa7146_ext_vv = type { i32, i32, i32, i32, ptr, i32, ptr, %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops, ptr, %struct.v4l2_file_operations }
%struct.saa7146_standard = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.saa7146_extension = type { [32 x i8], i32, ptr, %struct.pci_driver, ptr, ptr, ptr, ptr, i32, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }

@saa7146_debug = external dso_local local_unnamed_addr global i32, align 4
@saa7146_res_get.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"saa7146_vv\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7146_res_get\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/common/saa7146/saa7146_fops.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(): already allocated! want: 0x%02x, cur:0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"saa7146_vv: %s(): already allocated! want: 0x%02x, cur:0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7146_res_get.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(): locked! vv->resources:0x%02x, we want:0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"saa7146_vv: %s(): locked! vv->resources:0x%02x, we want:0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7146_res_get.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): res: get 0x%02x, cur:0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"saa7146_vv: %s(): res: get 0x%02x, cur:0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@saa7146_res_free.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa7146_res_free\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): res: put 0x%02x, cur:0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"saa7146_vv: %s(): res: put 0x%02x, cur:0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@saa7146_dma_free.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa7146_dma_free\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): dev:%p, buf:%p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"saa7146_vv: %s(): dev:%p, buf:%p\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7146_buffer_queue.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa7146_buffer_queue\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): dev:%p, dmaq:%p, buf:%p\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"saa7146_vv: %s(): dev:%p, dmaq:%p, buf:%p\0A\00", [53 x i8] zeroinitializer }, align 32
@saa7146_buffer_queue.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): immediately activating buffer %p\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"saa7146_vv: %s(): immediately activating buffer %p\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7146_buffer_queue.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.20, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s(): adding buffer %p to queue. (active buffer present)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"saa7146_vv: %s(): adding buffer %p to queue. (active buffer present)\0A\00", [58 x i8] zeroinitializer }, align 32
@saa7146_buffer_finish.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7146_buffer_finish\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): dev:%p, dmaq:%p, state:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"saa7146_vv: %s(): dev:%p, dmaq:%p, state:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@saa7146_buffer_finish.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.25, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(): q->curr:%p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"saa7146_vv: %s(): q->curr:%p\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7146_buffer_finish.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.27, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): aiii. no current buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"saa7146_vv: %s(): aiii. no current buffer\0A\00", [53 x i8] zeroinitializer }, align 32
@saa7146_buffer_next.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7146_buffer_next\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): dev:%p, dmaq:%p, vbi:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"saa7146_vv: %s(): dev:%p, dmaq:%p, vbi:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@saa7146_buffer_next.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.32, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(): next buffer: buf:%p, prev:%p, next:%p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"saa7146_vv: %s(): next buffer: buf:%p, prev:%p, next:%p\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7146_buffer_next.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.34, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): no next buffer. stopping.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"saa7146_vv: %s(): no next buffer. stopping.\0A\00", [51 x i8] zeroinitializer }, align 32
@saa7146_buffer_timeout.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"saa7146_buffer_timeout\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): dev:%p, dmaq:%p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"saa7146_vv: %s(): dev:%p, dmaq:%p\0A\00", [61 x i8] zeroinitializer }, align 32
@saa7146_buffer_timeout.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.39, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): timeout on %p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"saa7146_vv: %s(): timeout on %p\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7146_vv_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"saa7146_fops:476:(hdl)->_lock\00", [34 x i8] zeroinitializer }, align 32
@saa7146_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @saa7146_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@saa7146_vv_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013saa7146_vv: %s: out of memory. aborting.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7146_vv_init\00", [16 x i8] zeroinitializer }, align 32
@saa7146_vv_init._entry_ptr = internal global ptr @saa7146_vv_init._entry, section ".printk_index", align 4
@saa7146_video_ioctl_ops = external dso_local constant %struct.v4l2_ioctl_ops, align 4
@saa7146_vbi_ioctl_ops = external dso_local local_unnamed_addr constant %struct.v4l2_ioctl_ops, align 4
@saa7146_vv_init.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(): dev:%p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7146_vv: %s(): dev:%p\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7146_vv_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7146_vv_init._entry_ptr.47 = internal global ptr @saa7146_vv_init._entry.46, section ".printk_index", align 4
@saa7146_video_uops = external dso_local local_unnamed_addr constant %struct.saa7146_use_ops, align 4
@saa7146_vbi_uops = external dso_local local_unnamed_addr constant %struct.saa7146_use_ops, align 4
@saa7146_vv_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&vv->vbi_read_timeout)\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_saa7146_vv_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7146_vv_init = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7146_vv_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7146_vv_init to i32), ptr @__kstrtab_saa7146_vv_init, ptr @__kstrtabns_saa7146_vv_init }, section "___ksymtab_gpl+saa7146_vv_init", align 4
@saa7146_vv_release.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.44, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"saa7146_vv_release\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_saa7146_vv_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7146_vv_release = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7146_vv_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7146_vv_release to i32), ptr @__kstrtab_saa7146_vv_release, ptr @__kstrtabns_saa7146_vv_release }, section "___ksymtab_gpl+saa7146_vv_release", align 4
@saa7146_register_device.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa7146_register_device\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): dev:%p, name:'%s', type:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"saa7146_vv: %s(): dev:%p, name:'%s', type:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @fops_read, ptr @fops_write, ptr @fops_poll, ptr @video_ioctl2, ptr null, ptr @fops_mmap, ptr @fops_open, ptr @fops_release }, [60 x i8] zeroinitializer }, align 32
@saa7146_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.2, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013saa7146_vv: %s: cannot register v4l2 device. skipping.\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7146_register_device._entry_ptr = internal global ptr @saa7146_register_device._entry, section ".printk_index", align 4
@saa7146_register_device._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016saa7146_vv: %s: registered device %s [v4l2]\0A\00", [49 x i8] zeroinitializer }, align 32
@saa7146_register_device._entry_ptr.56 = internal global ptr @saa7146_register_device._entry.54, section ".printk_index", align 4
@__kstrtab_saa7146_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7146_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7146_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7146_register_device to i32), ptr @__kstrtab_saa7146_register_device, ptr @__kstrtabns_saa7146_register_device }, section "___ksymtab_gpl+saa7146_register_device", align 4
@saa7146_unregister_device.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.44, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7146_unregister_device\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_saa7146_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7146_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7146_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7146_unregister_device to i32), ptr @__kstrtab_saa7146_unregister_device, ptr @__kstrtabns_saa7146_unregister_device }, section "___ksymtab_gpl+saa7146_unregister_device", align 4
@__initcall__kmod_saa7146_vv__334_653_saa7146_vv_init_module6 = internal global ptr @saa7146_vv_init_module, section ".initcall6.init", align 4
@__exitcall_saa7146_vv_cleanup_module = internal global ptr @saa7146_vv_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author335 = internal constant [51 x i8] c"saa7146_vv.author=Michael Hunold <michael@mihu.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description336 = internal constant [69 x i8] c"saa7146_vv.description=video4linux driver for saa7146-based hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_file337 = internal constant [56 x i8] c"saa7146_vv.file=drivers/media/common/saa7146/saa7146_vv\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [23 x i8] c"saa7146_vv.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vv_callback.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vv_callback\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): dev:%p, isr:0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"saa7146_vv: %s(): dev:%p, isr:0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@vv_callback.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.61, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): irq: RPS0 (0x%08x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"saa7146_vv: %s(): irq: RPS0 (0x%08x)\0A\00", [58 x i8] zeroinitializer }, align 32
@vv_callback.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.63, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): irq: RPS1 vbi workaround (0x%08x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"saa7146_vv: %s(): irq: RPS1 vbi workaround (0x%08x)\0A\00", [43 x i8] zeroinitializer }, align 32
@vv_callback.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.65, i8 0, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): irq: RPS1 (0x%08x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"saa7146_vv: %s(): irq: RPS1 (0x%08x)\0A\00", [58 x i8] zeroinitializer }, align 32
@__fops_poll.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__fops_poll\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(): file:%p, poll:%p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"saa7146_vv: %s(): file:%p, poll:%p\0A\00", [60 x i8] zeroinitializer }, align 32
@__fops_poll.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.70, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): using video queue\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"saa7146_vv: %s(): using video queue\0A\00", [59 x i8] zeroinitializer }, align 32
@__fops_poll.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.72, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(): buf == NULL!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"saa7146_vv: %s(): buf == NULL!\0A\00", [32 x i8] zeroinitializer }, align 32
@__fops_poll.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.74, i8 0, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): poll succeeded!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"saa7146_vv: %s(): poll succeeded!\0A\00", [61 x i8] zeroinitializer }, align 32
@__fops_poll.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.76, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): nothing to poll for, buf->state:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"saa7146_vv: %s(): nothing to poll for, buf->state:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@fops_mmap.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fops_mmap\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(): V4L2_BUF_TYPE_VIDEO_CAPTURE: file:%p, vma:%p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"saa7146_vv: %s(): V4L2_BUF_TYPE_VIDEO_CAPTURE: file:%p, vma:%p\0A\00", [32 x i8] zeroinitializer }, align 32
@fops_mmap.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.81, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(): V4L2_BUF_TYPE_VBI_CAPTURE: file:%p, vma:%p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"saa7146_vv: %s(): V4L2_BUF_TYPE_VBI_CAPTURE: file:%p, vma:%p\0A\00", [34 x i8] zeroinitializer }, align 32
@fops_open.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fops_open\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): file:%p, dev:%s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"saa7146_vv: %s(): file:%p, dev:%s\0A\00", [61 x i8] zeroinitializer }, align 32
@fops_open.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.86, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(): using: %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"saa7146_vv: %s(): using: %p\0A\00", [35 x i8] zeroinitializer }, align 32
@fops_open.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.88, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(): no extension registered for this device\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"saa7146_vv: %s(): no extension registered for this device\0A\00", [37 x i8] zeroinitializer }, align 32
@fops_open.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.90, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s(): cannot allocate memory for per open data\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"saa7146_vv: %s(): cannot allocate memory for per open data\0A\00", [36 x i8] zeroinitializer }, align 32
@fops_open.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.92, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): initializing vbi...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"saa7146_vv: %s(): initializing vbi...\0A\00", [57 x i8] zeroinitializer }, align 32
@fops_open.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.94, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): initializing video...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"saa7146_vv: %s(): initializing video...\0A\00", [55 x i8] zeroinitializer }, align 32
@fops_release.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fops_release\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(): file:%p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"saa7146_vv: %s(): file:%p\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 16, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 24, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 32, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 45, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 56, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 73, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 79, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 84, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 95, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 96, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 100, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 118, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 128, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 132, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 169, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 173, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 476, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"saa7146_ctrl_ops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 460, i32 35 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 497, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 506, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 523, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 562, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 577, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 597, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [11 x i8] c"video_fops\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 424, i32 42 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 624, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 628, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 636, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 440, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 443, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 450, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 455, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 328, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 337, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 345, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 351, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 355, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 296, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 302, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 199, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 204, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 208, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 216, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 227, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 233, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.408 = private constant [47 x i8] c"../drivers/media/common/saa7146/saa7146_fops.c\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 263, i32 2 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_license338, ptr @__exitcall_saa7146_vv_cleanup_module, ptr @__initcall__kmod_saa7146_vv__334_653_saa7146_vv_init_module6, ptr @__ksymtab_saa7146_register_device, ptr @__ksymtab_saa7146_unregister_device, ptr @__ksymtab_saa7146_vv_init, ptr @__ksymtab_saa7146_vv_release, ptr @saa7146_register_device._entry, ptr @saa7146_register_device._entry.54, ptr @saa7146_register_device._entry_ptr, ptr @saa7146_register_device._entry_ptr.56, ptr @saa7146_vv_cleanup_module, ptr @saa7146_vv_init._entry, ptr @saa7146_vv_init._entry.46, ptr @saa7146_vv_init._entry_ptr, ptr @saa7146_vv_init._entry_ptr.47, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @saa7146_vv_init._key, ptr @.str.41, ptr @saa7146_ctrl_ops, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @saa7146_vv_init.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @video_fops, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_vv_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_vv_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_vv_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_vv_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_register_device._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7146_res_get(ptr nocapture noundef %fh, i32 noundef %bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  %resources = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 4
  %4 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resources, align 4
  %and = and i32 %5, %bit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %6 = load i32, ptr @saa7146_debug, align 4
  %and2 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %do.body5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_res_get.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_res_get, %if.then9)) #7
          to label %cleanup [label %if.then9], !srcloc !219

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %resources10 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 22
  %7 = ptrtoint ptr %resources10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resources10, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_res_get.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %bit, i32 noundef %8) #7
  br label %cleanup

if.end14:                                         ; preds = %entry
  %resources15 = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 22
  %9 = ptrtoint ptr %resources15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resources15, align 4
  %and16 = and i32 %10, %bit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end43, label %do.body19

do.body19:                                        ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %11 = load i32, ptr @saa7146_debug, align 4
  %and20 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.cleanup_crit_edge, label %do.body23

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body23:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_res_get.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_res_get, %if.then35)) #7
          to label %cleanup [label %if.then35], !srcloc !219

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %resources15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resources15, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_res_get.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef %bit) #7
  br label %cleanup

if.end43:                                         ; preds = %if.end14
  %or = or i32 %5, %bit
  %14 = ptrtoint ptr %resources to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %resources, align 4
  %15 = ptrtoint ptr %resources15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resources15, align 4
  %or46 = or i32 %16, %bit
  store i32 %or46, ptr %resources15, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %17 = load i32, ptr @saa7146_debug, align 4
  %and48 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end43.cleanup_crit_edge, label %do.body51

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body51:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_res_get.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_res_get, %if.then63)) #7
          to label %cleanup [label %if.then63], !srcloc !219

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %resources15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resources15, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_res_get.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef %bit, i32 noundef %19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %do.body51, %if.end43.cleanup_crit_edge, %if.then35, %do.body23, %do.body19.cleanup_crit_edge, %if.then9, %do.body5, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then9 ], [ 1, %do.body.cleanup_crit_edge ], [ 0, %if.then35 ], [ 0, %do.body19.cleanup_crit_edge ], [ 1, %if.then63 ], [ 1, %if.end43.cleanup_crit_edge ], [ 1, %do.body5 ], [ 0, %do.body23 ], [ 1, %do.body51 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7146_res_free(ptr nocapture noundef %fh, i32 noundef %bits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %resources = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 4
  %0 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resources, align 4
  %and = and i32 %1, %bits
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %bits)
  %cmp.not = icmp eq i32 %and, %bits
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !220

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/saa7146/saa7146_fops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 41, 0\0A.popsection", ""() #7, !srcloc !221
  unreachable

do.end8:                                          ; preds = %entry
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vv_data, align 4
  %neg = xor i32 %bits, -1
  %and10 = and i32 %1, %neg
  %6 = ptrtoint ptr %resources to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and10, ptr %resources, align 4
  %resources12 = getelementptr inbounds %struct.saa7146_vv, ptr %5, i32 0, i32 22
  %7 = ptrtoint ptr %resources12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resources12, align 4
  %and13 = and i32 %8, %neg
  store i32 %and13, ptr %resources12, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %9 = load i32, ptr @saa7146_debug, align 4
  %and15 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.end8.do.end33_crit_edge, label %do.body18

do.end8.do.end33_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

do.body18:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_res_free.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_res_free, %if.then26)) #7
          to label %do.end33 [label %if.then26], !srcloc !219

if.then26:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %resources12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resources12, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_res_free.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef %bits, i32 noundef %11) #7
  br label %do.end33

do.end33:                                         ; preds = %if.then26, %do.body18, %do.end8.do.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7146_dma_free(ptr noundef %dev, ptr noundef %q, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @videobuf_to_dma(ptr noundef %buf) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %0 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_dma_free.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_dma_free, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !219

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_dma_free.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef %dev, ptr noundef %buf) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %call11 = tail call i32 @videobuf_waiton(ptr noundef %q, ptr noundef %buf, i32 noundef 0, i32 noundef 0) #7
  %dev12 = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 3
  %1 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev12, align 4
  %call13 = tail call i32 @videobuf_dma_unmap(ptr noundef %2, ptr noundef %call) #7
  %call14 = tail call i32 @videobuf_dma_free(ptr noundef %call) #7
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 7
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7146_buffer_queue(ptr noundef %dev, ptr noundef %q, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %slock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %slock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.body8, !prof !222

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/saa7146/saa7146_fops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #7, !srcloc !223
  unreachable

do.body8:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %2 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body8.do.body25_crit_edge, label %do.body11

do.body8.do.body25_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

do.body11:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_buffer_queue.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_buffer_queue, %if.then20)) #7
          to label %do.body25 [label %if.then20], !srcloc !219

if.then20:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_buffer_queue.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, ptr noundef %dev, ptr noundef %q, ptr noundef %buf) #7
  br label %do.body25

do.body25:                                        ; preds = %if.then20, %do.body11, %do.body8.do.body25_crit_edge
  %tobool26.not = icmp eq ptr %q, null
  br i1 %tobool26.not, label %do.body36, label %do.end41, !prof !222

do.body36:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/saa7146/saa7146_fops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #7, !srcloc !224
  unreachable

do.end41:                                         ; preds = %do.body25
  %curr = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %q, i32 0, i32 1
  %3 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %curr, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then42, label %if.else

if.then42:                                        ; preds = %do.end41
  %5 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %curr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %6 = load i32, ptr @saa7146_debug, align 4
  %and45 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then42.do.end64_crit_edge, label %do.body48

if.then42.do.end64_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end64

do.body48:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_buffer_queue.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_buffer_queue, %if.then60)) #7
          to label %do.end64 [label %if.then60], !srcloc !219

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_buffer_queue.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.15, ptr noundef %buf) #7
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %do.body48, %if.then42.do.end64_crit_edge
  %activate = getelementptr inbounds %struct.saa7146_buf, ptr %buf, i32 0, i32 2
  %7 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %activate, align 4
  %call65 = tail call i32 %8(ptr noundef %dev, ptr noundef %buf, ptr noundef null) #7
  br label %if.end89

if.else:                                          ; preds = %do.end41
  %queue = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 9
  %queue66 = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %q, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %q, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %10, ptr noundef %queue66) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_add_tail.exit_crit_edge

if.else.list_add_tail.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %queue, ptr %prev.i, align 4
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %queue66, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %queue, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.else.list_add_tail.exit_crit_edge
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 7
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %16 = load i32, ptr @saa7146_debug, align 4
  %and69 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %list_add_tail.exit.if.end89_crit_edge, label %do.body72

list_add_tail.exit.if.end89_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

do.body72:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_buffer_queue.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_buffer_queue, %if.then84)) #7
          to label %if.end89 [label %if.then84], !srcloc !219

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_buffer_queue.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.15, ptr noundef %buf) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %do.body72, %list_add_tail.exit.if.end89_crit_edge, %do.end64
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7146_buffer_finish(ptr noundef %dev, ptr noundef %q, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %slock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %slock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.body8, !prof !222

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/saa7146/saa7146_fops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 94, 0\0A.popsection", ""() #7, !srcloc !225
  unreachable

do.body8:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %2 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body8.do.body25_crit_edge, label %do.body11

do.body8.do.body25_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

do.body11:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_buffer_finish.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_buffer_finish, %if.then20)) #7
          to label %do.body25 [label %if.then20], !srcloc !219

if.then20:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_buffer_finish.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, ptr noundef %dev, ptr noundef %q, i32 noundef %state) #7
  br label %do.body25

do.body25:                                        ; preds = %if.then20, %do.body11, %do.body8.do.body25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %3 = load i32, ptr @saa7146_debug, align 4
  %and26 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.do.end45_crit_edge, label %do.body29

do.body25.do.end45_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

do.body29:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_buffer_finish.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_buffer_finish, %if.then41)) #7
          to label %do.end45 [label %if.then41], !srcloc !219

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %curr = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %q, i32 0, i32 1
  %4 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_buffer_finish.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.22, ptr noundef %5) #7
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29, %do.body25.do.end45_crit_edge
  %curr46 = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %q, i32 0, i32 1
  %6 = ptrtoint ptr %curr46 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %curr46, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %do.body48, label %if.end69

do.body48:                                        ; preds = %do.end45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %8 = load i32, ptr @saa7146_debug, align 4
  %and49 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.return_crit_edge, label %do.body52

do.body48.return_crit_edge:                       ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body52:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_buffer_finish.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_buffer_finish, %if.then64)) #7
          to label %return [label %if.then64], !srcloc !219

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_buffer_finish.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.22) #7
  br label %return

if.end69:                                         ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  %state71 = getelementptr inbounds %struct.videobuf_buffer, ptr %7, i32 0, i32 7
  %9 = ptrtoint ptr %state71 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %state, ptr %state71, align 4
  %call.i = tail call i64 @ktime_get() #7
  %10 = ptrtoint ptr %curr46 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %curr46, align 4
  %ts = getelementptr inbounds %struct.videobuf_buffer, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call.i, ptr %ts, align 8
  %13 = load ptr, ptr %curr46, align 4
  %done = getelementptr inbounds %struct.videobuf_buffer, ptr %13, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %done, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %14 = ptrtoint ptr %curr46 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %curr46, align 4
  br label %return

return:                                           ; preds = %if.end69, %if.then64, %do.body52, %do.body48.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7146_buffer_next(ptr noundef %dev, ptr noundef %q, i32 noundef %vbi) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %q, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !222

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/saa7146/saa7146_fops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #7, !srcloc !226
  unreachable

do.body10:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %0 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body10.do.body28_crit_edge, label %do.body13

do.body10.do.body28_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

do.body13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_buffer_next.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_buffer_next, %if.then21)) #7
          to label %do.body28 [label %if.then21], !srcloc !219

if.then21:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_buffer_next.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, ptr noundef %dev, ptr noundef nonnull %q, i32 noundef %vbi) #7
  br label %do.body28

do.body28:                                        ; preds = %if.then21, %do.body13, %do.body10.do.body28_crit_edge
  %slock = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %1 = ptrtoint ptr %slock to i32
  call void @__asan_load4_noabort(i32 %1)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %slock, align 4
  %2 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body40, label %do.end48, !prof !222

do.body40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/saa7146/saa7146_fops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #7, !srcloc !227
  unreachable

do.end48:                                         ; preds = %do.body28
  %queue = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %q, i32 0, i32 2
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %4, %queue
  br i1 %cmp.i.not, label %do.body93, label %if.then51

if.then51:                                        ; preds = %do.end48
  %add.ptr = getelementptr i8, ptr %4, i32 -40
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then51.list_del.exit_crit_edge

if.then51.list_del.exit_crit_edge:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then51.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %queue, align 4
  %cmp.i173.not = icmp eq ptr %14, %queue
  %add.ptr64 = getelementptr i8, ptr %14, i32 -40
  %spec.select = select i1 %cmp.i173.not, ptr null, ptr %add.ptr64
  %curr = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %q, i32 0, i32 1
  %15 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %curr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %16 = load i32, ptr @saa7146_debug, align 4
  %and67 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %list_del.exit.do.end91_crit_edge, label %do.body70

list_del.exit.do.end91_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end91

do.body70:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_buffer_next.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_buffer_next, %if.then82)) #7
          to label %do.end91 [label %if.then82], !srcloc !219

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %prev = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %q, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev, align 4
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queue, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_buffer_next.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29, ptr noundef %add.ptr, ptr noundef %18, ptr noundef %20) #7
  br label %do.end91

do.end91:                                         ; preds = %if.then82, %do.body70, %list_del.exit.do.end91_crit_edge
  %activate = getelementptr i8, ptr %4, i32 108
  %21 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %activate, align 4
  %call92 = tail call i32 %22(ptr noundef %dev, ptr noundef %add.ptr, ptr noundef %spec.select) #7
  br label %if.end144

do.body93:                                        ; preds = %do.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %23 = load i32, ptr @saa7146_debug, align 4
  %and94 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %do.body93.do.end115_crit_edge, label %do.body97

do.body93.do.end115_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end115

do.body97:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_buffer_next.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_buffer_next, %if.then109)) #7
          to label %do.end115 [label %if.then109], !srcloc !219

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_buffer_next.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.29) #7
  br label %do.end115

do.end115:                                        ; preds = %if.then109, %do.body97, %do.body93.do.end115_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vbi)
  %cmp.not = icmp eq i32 %vbi, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %mem125 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %24 = ptrtoint ptr %mem125 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem125, align 4
  br i1 %cmp.not, label %do.body122, label %do.body117

do.body117:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr120 = getelementptr i8, ptr %25, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 4096) #7, !srcloc !228
  br label %if.end142

do.body122:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr126 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 0) #7, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %mem125 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem125, align 4
  %add.ptr131 = getelementptr i8, ptr %27, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 67109888) #7, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @arm_heavy_mb() #7
  %d_rps0 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 21
  %28 = ptrtoint ptr %d_rps0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %d_rps0, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %mem125 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mem125, align 4
  %add.ptr136 = getelementptr i8, ptr %32, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 %30) #7, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %mem125 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mem125, align 4
  %add.ptr141 = getelementptr i8, ptr %34, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 1048592) #7, !srcloc !228
  br label %if.end142

if.end142:                                        ; preds = %do.body122, %do.body117
  %timeout = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %q, i32 0, i32 3
  %call143 = tail call i32 @del_timer(ptr noundef %timeout) #7
  br label %if.end144

if.end144:                                        ; preds = %if.end142, %do.end91
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7146_buffer_timeout(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %2 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body12_crit_edge, label %do.body2

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_buffer_timeout.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_buffer_timeout, %if.then7)) #7
          to label %do.body12 [label %if.then7], !srcloc !219

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_buffer_timeout.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, ptr noundef %1, ptr noundef %add.ptr) #7
  br label %do.body12

do.body12:                                        ; preds = %if.then7, %do.body2, %entry.do.body12_crit_edge
  %slock = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 3
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #7
  %curr = getelementptr i8, ptr %t, i32 -12
  %3 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %curr, align 4
  %tobool20.not = icmp eq ptr %4, null
  br i1 %tobool20.not, label %do.body12.if.end46_crit_edge, label %do.body22

do.body12.if.end46_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.body22:                                        ; preds = %do.body12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %5 = load i32, ptr @saa7146_debug, align 4
  %and23 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.do.end45_crit_edge, label %do.body26

do.body22.do.end45_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

do.body26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_buffer_timeout.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_buffer_timeout, %if.then38)) #7
          to label %do.end45 [label %if.then38], !srcloc !219

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %curr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_buffer_timeout.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.36, ptr noundef %7) #7
  br label %do.end45

do.end45:                                         ; preds = %if.then38, %do.body26, %do.body22.do.end45_crit_edge
  tail call void @saa7146_buffer_finish(ptr noundef %1, ptr noundef %add.ptr, i32 noundef 5)
  br label %if.end46

if.end46:                                         ; preds = %do.end45, %do.body12.if.end46_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call15) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7146_vv_init(ptr noundef %dev, ptr noundef %ext_vv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 2
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %v4l2_dev = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 1
  %call = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef %v4l2_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 6, ptr noundef nonnull @saa7146_vv_init._key, ptr noundef nonnull @.str.41) #7
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7146_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7146_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #7
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7146_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #7
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7146_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7146_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %error = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 2, i32 9
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #7
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %ctrl_handler14 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %ctrl_handler14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ctrl_handler, ptr %ctrl_handler14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 796) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #11
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #7
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %vid_ops = getelementptr inbounds %struct.saa7146_ext_vv, ptr %ext_vv, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %vid_ops, ptr @saa7146_video_ioctl_ops, i32 488)
  %vbi_ops = getelementptr inbounds %struct.saa7146_ext_vv, ptr %ext_vv, i32 0, i32 8
  %7 = call ptr @memcpy(ptr %vbi_ops, ptr @saa7146_vbi_ioctl_ops, i32 488)
  %core_ops = getelementptr inbounds %struct.saa7146_ext_vv, ptr %ext_vv, i32 0, i32 9
  %8 = ptrtoint ptr %core_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @saa7146_video_ioctl_ops, ptr %core_ops, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %9 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end20.do.body37_crit_edge, label %do.body24

if.end20.do.body37_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37

do.body24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_vv_init.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_vv_init, %if.then30)) #7
          to label %do.body37 [label %if.then30], !srcloc !219

if.then30:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_vv_init.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, ptr noundef %dev) #7
  br label %do.body37

do.body37:                                        ; preds = %if.then30, %do.body24, %if.end20.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1073758336) #7, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem, align 4
  %add.ptr44 = getelementptr i8, ptr %13, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 262148) #7, !srcloc !228
  %ext_vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 13
  %14 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ext_vv, ptr %ext_vv_data, align 4
  %15 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci, align 4
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %d_clipping = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 21
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev46, i32 noundef 256, ptr noundef %d_clipping, i32 noundef 3264, i32 noundef 0) #7
  %cpu_addr = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 21, i32 1
  %17 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %cpu_addr, align 4
  %cmp51 = icmp eq ptr %call.i, null
  br i1 %cmp51, label %do.end55, label %if.end59

do.end55:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #7
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #7
  br label %cleanup

if.end59:                                         ; preds = %do.body37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_video_uops to i32))
  %18 = load ptr, ptr @saa7146_video_uops, align 4
  tail call void %18(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #7
  %19 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ext_vv_data, align 4
  %capabilities = getelementptr inbounds %struct.saa7146_ext_vv, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %capabilities, align 4
  %and61 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end59.if.end64_crit_edge, label %if.then63

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_vbi_uops to i32))
  %23 = load ptr, ptr @saa7146_vbi_uops, align 4
  tail call void %23(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #7
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end59.if.end64_crit_edge
  %standard = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %standard, align 4
  %h_max_out = getelementptr inbounds %struct.saa7146_standard, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %h_max_out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %h_max_out, align 4
  %ov_fb = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 10
  %fmt65 = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 10, i32 3
  %28 = ptrtoint ptr %fmt65 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fmt65, align 8
  %v_max_out = getelementptr inbounds %struct.saa7146_standard, ptr %25, i32 0, i32 6
  %29 = ptrtoint ptr %v_max_out to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %v_max_out, align 8
  %height = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 10, i32 3, i32 1
  %31 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %height, align 4
  %pixelformat = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 10, i32 3, i32 2
  %32 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1346520914, ptr %pixelformat, align 8
  %mul = shl i32 %27, 1
  %bytesperline = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 10, i32 3, i32 4
  %33 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul, ptr %bytesperline, align 8
  %mul82 = mul i32 %30, %mul
  %sizeimage = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 10, i32 3, i32 5
  %34 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul82, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 10, i32 3, i32 6
  %35 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8, ptr %colorspace, align 8
  %video_fmt = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 14
  %36 = ptrtoint ptr %video_fmt to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 384, ptr %video_fmt, align 8
  %height88 = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 14, i32 1
  %37 = ptrtoint ptr %height88 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 288, ptr %height88, align 4
  %pixelformat89 = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 14, i32 2
  %38 = ptrtoint ptr %pixelformat89 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 861030210, ptr %pixelformat89, align 8
  %field = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 14, i32 3
  %39 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %field, align 4
  %colorspace90 = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 14, i32 6
  %40 = ptrtoint ptr %colorspace90 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %colorspace90, align 8
  %bytesperline93 = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 14, i32 4
  %41 = ptrtoint ptr %bytesperline93 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1152, ptr %bytesperline93, align 8
  %sizeimage97 = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 14, i32 5
  %42 = ptrtoint ptr %sizeimage97 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 331776, ptr %sizeimage97, align 4
  %vbi_fmt = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %vbi_fmt to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 27000000, ptr %vbi_fmt, align 8
  %offset = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 248, ptr %offset, align 4
  %samples_per_line = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1440, ptr %samples_per_line, align 8
  %sample_format = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1497715271, ptr %sample_format, align 4
  %start = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %start, align 8
  %count = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 1, i32 5
  %48 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 16, ptr %count, align 8
  %arrayidx100 = getelementptr %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 1
  %49 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 312, ptr %arrayidx100, align 4
  %arrayidx102 = getelementptr %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 1
  %50 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 16, ptr %arrayidx102, align 4
  %vbi_read_timeout = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %vbi_read_timeout, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.48, ptr noundef nonnull @saa7146_vv_init.__key) #7
  %51 = ptrtoint ptr %ov_fb to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %ov_fb, align 4
  %flags = getelementptr inbounds %struct.saa7146_vv, ptr %call7.i.i, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %flags, align 8
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %53 = ptrtoint ptr %vv_data to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i, ptr %vv_data, align 4
  %vv_callback = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 15
  %54 = ptrtoint ptr %vv_callback to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @vv_callback, ptr %vv_callback, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.end55, %do.end, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then9 ], [ -12, %do.end ], [ -12, %do.end55 ], [ 0, %if.end64 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vv_callback(ptr noundef %dev, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %0 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vv_callback.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vv_callback, %if.then5)) #7
          to label %do.end8 [label %if.then5], !srcloc !219

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vv_callback.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, ptr noundef %dev, i32 noundef %status) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %and9 = and i32 %status, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp.not = icmp eq i32 %and9, 0
  br i1 %cmp.not, label %do.end8.if.end34_crit_edge, label %do.body11

do.end8.if.end34_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.body11:                                        ; preds = %do.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %1 = load i32, ptr @saa7146_debug, align 4
  %and12 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.end33_crit_edge, label %do.body15

do.body11.do.end33_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

do.body15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vv_callback.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vv_callback, %if.then27)) #7
          to label %do.end33 [label %if.then27], !srcloc !219

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vv_callback.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.58, i32 noundef %status) #7
  br label %do.end33

do.end33:                                         ; preds = %if.then27, %do.body15, %do.body11.do.end33_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_video_uops, i32 0, i32 3) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_video_uops, i32 0, i32 3), align 4
  tail call void %2(ptr noundef %dev, i32 noundef %status) #7
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end8.if.end34_crit_edge
  %and35 = and i32 %status, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36.not = icmp eq i32 %and35, 0
  br i1 %cmp36.not, label %if.end34.cleanup97_crit_edge, label %if.then37

if.end34.cleanup97_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup97

if.then37:                                        ; preds = %if.end34
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 256
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  %6 = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp42.not = icmp eq i32 %6, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %7 = load i32, ptr @saa7146_debug, align 4
  %and74 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %cmp42.not, label %do.body73, label %do.body44

do.body44:                                        ; preds = %if.then37
  br i1 %tobool75.not, label %do.body44.do.end66_crit_edge, label %do.body48

do.body44.do.end66_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

do.body48:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vv_callback.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vv_callback, %if.then60)) #7
          to label %do.end66 [label %if.then60], !srcloc !219

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vv_callback.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.58, i32 noundef %status) #7
  br label %do.end66

do.end66:                                         ; preds = %if.then60, %do.body48, %do.body44.do.end66_crit_edge
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %8 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vv_data, align 4
  %vbi_wq = getelementptr inbounds %struct.saa7146_vv, ptr %9, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %vbi_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !236
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem, align 4
  %add.ptr71 = getelementptr i8, ptr %11, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 128) #7, !srcloc !228
  br label %cleanup97

do.body73:                                        ; preds = %if.then37
  br i1 %tobool75.not, label %do.body73.do.end95_crit_edge, label %do.body77

do.body73.do.end95_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95

do.body77:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vv_callback.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vv_callback, %if.then89)) #7
          to label %do.end95 [label %if.then89], !srcloc !219

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vv_callback.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.58, i32 noundef %status) #7
  br label %do.end95

do.end95:                                         ; preds = %if.then89, %do.body77, %do.body73.do.end95_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_vbi_uops, i32 0, i32 3) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_vbi_uops, i32 0, i32 3), align 4
  tail call void %12(ptr noundef %dev, i32 noundef %status) #7
  br label %cleanup97

cleanup97:                                        ; preds = %do.end95, %do.end66, %if.end34.cleanup97_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7146_vv_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %2 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_vv_release.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_vv_release, %if.then5)) #7
          to label %do.end8 [label %if.then5], !srcloc !219

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_vv_release.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.49, ptr noundef %dev) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %v4l2_dev = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 1
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #7
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %d_clipping = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 21
  %cpu_addr = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 21, i32 1
  %5 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpu_addr, align 4
  %7 = ptrtoint ptr %d_clipping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_clipping, align 4
  tail call void @dma_free_attrs(ptr noundef %dev9, i32 noundef 256, ptr noundef %6, i32 noundef %8, i32 noundef 0) #7
  %ctrl_handler = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #7
  tail call void @kfree(ptr noundef %1) #7
  %9 = ptrtoint ptr %vv_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %vv_data, align 4
  %vv_callback = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %vv_callback to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vv_callback, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7146_register_device(ptr noundef %vfd, ptr noundef %dev, ptr noundef %name, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %0 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_register_device.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_register_device, %if.then5)) #7
          to label %do.end8 [label %if.then5], !srcloc !219

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_register_device.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, ptr noundef %dev, ptr noundef %name, i32 noundef %type) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %fops = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 3
  %1 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @video_fops, ptr %fops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %ext_vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_vv_data, align 4
  %vid_ops = getelementptr inbounds %struct.saa7146_ext_vv, ptr %3, i32 0, i32 7
  %vbi_ops = getelementptr inbounds %struct.saa7146_ext_vv, ptr %3, i32 0, i32 8
  %vbi_ops.sink = select i1 %cmp, ptr %vid_ops, ptr %vbi_ops
  %4 = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 24
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %vbi_ops.sink, ptr %4, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 23
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @video_device_release_empty, ptr %release, align 8
  %v4l2_lock = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 4
  %lock = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 26
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %v4l2_lock, ptr %lock, align 8
  %v4l2_dev = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 1
  %v4l2_dev13 = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 7
  %8 = ptrtoint ptr %v4l2_dev13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %v4l2_dev, ptr %v4l2_dev13, align 4
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 22
  %9 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %tvnorms, align 8
  %ext_vv_data14 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 13
  %10 = ptrtoint ptr %ext_vv_data14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ext_vv_data14, align 4
  %num_stds81 = getelementptr inbounds %struct.saa7146_ext_vv, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %num_stds81 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_stds81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1582 = icmp sgt i32 %13, 0
  br i1 %cmp1582, label %do.end8.for.body_crit_edge, label %do.end8.for.end_crit_edge

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end8.for.body_crit_edge:                       ; preds = %do.end8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end8.for.body_crit_edge
  %14 = phi ptr [ %22, %for.body.for.body_crit_edge ], [ %11, %do.end8.for.body_crit_edge ]
  %i.083 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end8.for.body_crit_edge ]
  %stds = getelementptr inbounds %struct.saa7146_ext_vv, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %stds to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stds, align 4
  %id = getelementptr %struct.saa7146_standard, ptr %16, i32 %i.083, i32 1
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %id, align 8
  %19 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tvnorms, align 8
  %or = or i64 %20, %18
  store i64 %or, ptr %tvnorms, align 8
  %inc = add nuw nsw i32 %i.083, 1
  %21 = ptrtoint ptr %ext_vv_data14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ext_vv_data14, align 4
  %num_stds = getelementptr inbounds %struct.saa7146_ext_vv, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %num_stds to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_stds, align 4
  %cmp15 = icmp slt i32 %inc, %24
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end8.for.end_crit_edge
  %name18 = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 12
  %call19 = tail call i32 @strscpy(ptr noundef %name18, ptr noundef %name, i32 noundef 32) #7
  %device_caps = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 4
  %25 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 83886085, ptr %device_caps, align 8
  %26 = ptrtoint ptr %ext_vv_data14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ext_vv_data14, align 4
  %capabilities = getelementptr inbounds %struct.saa7146_ext_vv, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %capabilities, align 4
  %or22 = or i32 %29, 83886085
  %storemerge.v = select i1 %cmp, i32 -145, i32 -131078
  %storemerge = and i32 %or22, %storemerge.v
  store i32 %storemerge, ptr %device_caps, align 8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 5, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %31 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fops, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vfd, i32 noundef %type, i32 noundef -1, i32 noundef 1, ptr noundef %34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp32 = icmp slt i32 %call.i, 0
  br i1 %cmp32, label %do.end36, label %do.end42

do.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50) #11
  br label %cleanup

do.end42:                                         ; preds = %for.end
  %name44 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 7
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 5, i32 3
  %35 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end42.video_device_node_name.exit_crit_edge

do.end42.video_device_node_name.exit_crit_edge:   ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.video_device, ptr %vfd, i32 0, i32 5
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end42.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %38, %if.end.i.i ], [ %36, %do.end42.video_device_node_name.exit_crit_edge ]
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name44, ptr noundef %retval.0.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %video_device_node_name.exit, %do.end36
  %retval.0 = phi i32 [ %call.i, %do.end36 ], [ 0, %video_device_node_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7146_unregister_device(ptr noundef %vfd, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %0 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.body1

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_unregister_device.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_unregister_device, %if.then5)) #7
          to label %do.end7 [label %if.then5], !srcloc !219

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_unregister_device.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.57, ptr noundef %dev) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then5, %do.body1, %entry.do.end7_crit_edge
  tail call void @video_unregister_device(ptr noundef %vfd) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @saa7146_vv_cleanup_module() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @saa7146_vv_init_module() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_s_ctrl(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_read(ptr noundef %file, ptr noundef %data, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #7
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_video_uops, i32 0, i32 4) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_video_uops, i32 0, i32 4), align 4
  %call1 = tail call i32 %3(ptr noundef %file, ptr noundef %data, i32 noundef %count, ptr noundef %ppos) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.saa7146_fh, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %ext_vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ext_vv_data, align 4
  %capabilities = getelementptr inbounds %struct.saa7146_ext_vv, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capabilities, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb2.cleanup_crit_edge, label %if.then

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb2
  %lock = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 26
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 8
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %13, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_vbi_uops, i32 0, i32 4) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_vbi_uops, i32 0, i32 4), align 4
  %call6 = tail call i32 %14(ptr noundef %file, ptr noundef %data, i32 noundef %count, ptr noundef %ppos) #7
  %15 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock, align 8
  tail call void @mutex_unlock(ptr noundef %16) #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/saa7146/saa7146_fops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 397, 0\0A.popsection", ""() #7, !srcloc !237
  unreachable

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call1, %sw.bb ], [ -512, %if.then.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_write(ptr noundef %file, ptr noundef %data, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #7
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vfl_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %1, label %do.body [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.saa7146_fh, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %ext_vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ext_vv_data, align 4
  %write = getelementptr inbounds %struct.saa7146_ext_vv, ptr %8, i32 0, i32 10, i32 2
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %sw.bb1.cleanup_crit_edge, label %if.then

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb1
  %lock = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 26
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 8
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %12, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %ext_vv_data6 = getelementptr inbounds %struct.saa7146_dev, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %ext_vv_data6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ext_vv_data6, align 4
  %write8 = getelementptr inbounds %struct.saa7146_ext_vv, ptr %16, i32 0, i32 10, i32 2
  %17 = ptrtoint ptr %write8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write8, align 4
  %call9 = tail call i32 %18(ptr noundef %file, ptr noundef %data, i32 noundef %count, ptr noundef %ppos) #7
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 8
  tail call void @mutex_unlock(ptr noundef %20) #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/saa7146/saa7146_fops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #7, !srcloc !238
  unreachable

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -512, %if.then.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #7
  %lock = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 26
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %call1 = tail call fastcc i32 @__fops_poll(ptr noundef %file, ptr noundef %wait)
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 8
  tail call void @mutex_unlock(ptr noundef %3) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_mmap(ptr noundef %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vfl_type, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %3, label %do.body38 [
    i32 0, label %do.body
    i32 1, label %do.body11
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %5 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end9_crit_edge, label %do.body1

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_mmap.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_mmap, %if.then6)) #7
          to label %do.end9 [label %if.then6], !srcloc !219

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_mmap.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, ptr noundef %file, ptr noundef %vma) #7
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %do.body.do.end9_crit_edge
  %video_q = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 2
  br label %sw.epilog

do.body11:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %6 = load i32, ptr @saa7146_debug, align 4
  %and12 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.end33_crit_edge, label %do.body15

do.body11.do.end33_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

do.body15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_mmap.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_mmap, %if.then27)) #7
          to label %do.end33 [label %if.then27], !srcloc !219

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_mmap.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.78, ptr noundef %file, ptr noundef %vma) #7
  br label %do.end33

do.end33:                                         ; preds = %if.then27, %do.body15, %do.body11.do.end33_crit_edge
  %dev = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %ext_vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ext_vv_data, align 4
  %capabilities = getelementptr inbounds %struct.saa7146_ext_vv, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capabilities, align 4
  %and34 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end37, label %do.end33.cleanup_crit_edge

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  %vbi_q = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 3
  br label %sw.epilog

do.body38:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/saa7146/saa7146_fops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 310, 0\0A.popsection", ""() #7, !srcloc !239
  unreachable

sw.epilog:                                        ; preds = %if.end37, %do.end9
  %q.0 = phi ptr [ %vbi_q, %if.end37 ], [ %video_q, %do.end9 ]
  %lock = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 26
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock, align 8
  %call44 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %14, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = tail call i32 @videobuf_mmap_mapper(ptr noundef %q.0, ptr noundef %vma) #7
  %15 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock, align 8
  tail call void @mutex_unlock(ptr noundef %16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %sw.epilog.cleanup_crit_edge, %do.end33.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %if.end47 ], [ -19, %do.end33.cleanup_crit_edge ], [ -512, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #7
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %2 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body2

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_open.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_open, %if.then7)) #7
          to label %do.end11 [label %if.then7], !srcloc !219

if.then7:                                         ; preds = %do.body2
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then7.video_device_node_name.exit_crit_edge

if.then7.video_device_node_name.exit_crit_edge:   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %if.then7.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.then7.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_open.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83, ptr noundef %file, ptr noundef %retval.0.i.i) #7
  br label %do.end11

do.end11:                                         ; preds = %video_device_node_name.exit, %do.body2, %entry.do.end11_crit_edge
  %lock = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 26
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock, align 8
  %call12 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %8, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body16, label %do.end11.cleanup_crit_edge

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body16:                                        ; preds = %do.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %9 = load i32, ptr @saa7146_debug, align 4
  %and17 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.do.end38_crit_edge, label %do.body20

do.body16.do.end38_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

do.body20:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_open.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_open, %if.then32)) #7
          to label %do.end38 [label %if.then32], !srcloc !219

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_open.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.83, ptr noundef %1) #7
  br label %do.end38

do.end38:                                         ; preds = %if.then32, %do.body20, %do.body16.do.end38_crit_edge
  %ext = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ext, align 4
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %do.body40, label %if.end63

do.body40:                                        ; preds = %do.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %12 = load i32, ptr @saa7146_debug, align 4
  %and41 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body40.if.end172_crit_edge, label %do.body44

do.body40.if.end172_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

do.body44:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_open.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_open, %if.then56)) #7
          to label %if.end172 [label %if.then56], !srcloc !219

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_open.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.83) #7
  br label %if.end172

if.end63:                                         ; preds = %do.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 864) #10
  %cmp65 = icmp eq ptr %call7.i.i, null
  br i1 %cmp65, label %do.body67, label %if.end90

do.body67:                                        ; preds = %if.end63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %14 = load i32, ptr @saa7146_debug, align 4
  %and68 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body67.if.end172_crit_edge, label %do.body71

do.body67.if.end172_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

do.body71:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_open.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_open, %if.then83)) #7
          to label %if.end172 [label %if.then83], !srcloc !219

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_open.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.83) #7
  br label %if.end172

if.end90:                                         ; preds = %if.end63
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call) #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %private_data, align 4
  %dev93 = getelementptr inbounds %struct.saa7146_fh, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %dev93 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %dev93, align 8
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %17 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp94 = icmp eq i32 %18, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %19 = load i32, ptr @saa7146_debug, align 4
  %and97 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %cmp94, label %do.body96, label %do.body132

do.body96:                                        ; preds = %if.end90
  br i1 %tobool98.not, label %do.body96.do.end118_crit_edge, label %do.body100

do.body96.do.end118_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end118

do.body100:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_open.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_open, %if.then112)) #7
          to label %do.end118 [label %if.then112], !srcloc !219

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_open.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.83) #7
  br label %do.end118

do.end118:                                        ; preds = %if.then112, %do.body100, %do.body96.do.end118_crit_edge
  %ext_vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ext_vv_data, align 4
  %capabilities = getelementptr inbounds %struct.saa7146_ext_vv, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %capabilities, align 4
  %and119 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %do.end118.if.end123_crit_edge, label %if.then121

do.end118.if.end123_crit_edge:                    ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then121:                                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_vbi_uops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_vbi_uops, i32 0, i32 1), align 4
  %call122 = tail call i32 %24(ptr noundef %1, ptr noundef %file) #7
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %do.end118.if.end123_crit_edge
  %result.0 = phi i32 [ %call122, %if.then121 ], [ 0, %do.end118.if.end123_crit_edge ]
  %25 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ext_vv_data, align 4
  %open = getelementptr inbounds %struct.saa7146_ext_vv, ptr %26, i32 0, i32 10, i32 7
  %27 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %open, align 4
  %tobool125.not = icmp eq ptr %28, null
  br i1 %tobool125.not, label %if.end123.if.end156_crit_edge, label %if.then126

if.end123.if.end156_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

if.then126:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %call130 = tail call i32 %28(ptr noundef %file) #7
  br label %if.end156

do.body132:                                       ; preds = %if.end90
  br i1 %tobool98.not, label %do.body132.do.end154_crit_edge, label %do.body136

do.body132.do.end154_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end154

do.body136:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_open.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_open, %if.then148)) #7
          to label %do.end154 [label %if.then148], !srcloc !219

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_open.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.83) #7
  br label %do.end154

do.end154:                                        ; preds = %if.then148, %do.body136, %do.body132.do.end154_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_video_uops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_video_uops, i32 0, i32 1), align 4
  %call155 = tail call i32 %29(ptr noundef %1, ptr noundef %file) #7
  br label %if.end156

if.end156:                                        ; preds = %do.end154, %if.then126, %if.end123.if.end156_crit_edge
  %result.1 = phi i32 [ %result.0, %if.then126 ], [ %result.0, %if.end123.if.end156_crit_edge ], [ %call155, %do.end154 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1)
  %cmp157.not = icmp eq i32 %result.1, 0
  br i1 %cmp157.not, label %if.end159, label %if.end156.if.then170_crit_edge

if.end156.if.then170_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then170

if.end159:                                        ; preds = %if.end156
  %30 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ext, align 4
  %module = getelementptr inbounds %struct.saa7146_extension, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %module, align 4
  %call161 = tail call zeroext i1 @try_module_get(ptr noundef %33) #7
  br i1 %call161, label %if.end165, label %if.end159.if.then170_crit_edge

if.end159.if.then170_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then170

if.end165:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #7
  br label %if.end172

if.then170:                                       ; preds = %if.end159.if.then170_crit_edge, %if.end156.if.then170_crit_edge
  %result.2.ph = phi i32 [ -22, %if.end159.if.then170_crit_edge ], [ %result.1, %if.end156.if.then170_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %private_data171 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %34 = ptrtoint ptr %private_data171 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %private_data171, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then170, %if.end165, %if.then83, %do.body71, %do.body67.if.end172_crit_edge, %if.then56, %do.body44, %do.body40.if.end172_crit_edge
  %result.2231 = phi i32 [ %result.2.ph, %if.then170 ], [ -12, %do.body67.if.end172_crit_edge ], [ -12, %if.then83 ], [ -19, %do.body40.if.end172_crit_edge ], [ -19, %if.then56 ], [ 0, %if.end165 ], [ -19, %do.body44 ], [ -12, %do.body71 ]
  %35 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lock, align 8
  tail call void @mutex_unlock(ptr noundef %36) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end172, %do.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.2231, %if.end172 ], [ -512, %do.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_release(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %4 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fops_release.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fops_release, %if.then7)) #7
          to label %do.end10 [label %if.then7], !srcloc !219

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fops_release.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, ptr noundef %file) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  %lock = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 26
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 8
  tail call void @mutex_lock_nested(ptr noundef %6, i32 noundef 0) #7
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %7 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.end10
  %ext_vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %3, i32 0, i32 13
  %9 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ext_vv_data, align 4
  %capabilities = getelementptr inbounds %struct.saa7146_ext_vv, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %capabilities, align 4
  %and12 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then11.if.end15_crit_edge, label %if.then14

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_vbi_uops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_vbi_uops, i32 0, i32 2), align 4
  tail call void %13(ptr noundef %3, ptr noundef %file) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then11.if.end15_crit_edge
  %14 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ext_vv_data, align 4
  %release = getelementptr inbounds %struct.saa7146_ext_vv, ptr %15, i32 0, i32 10, i32 8
  %16 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %release, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %if.end15.if.end24_crit_edge, label %if.then18

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 %17(ptr noundef %file) #7
  br label %if.end24

if.else:                                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_video_uops, i32 0, i32 2) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.saa7146_use_ops, ptr @saa7146_video_uops, i32 0, i32 2), align 4
  tail call void %18(ptr noundef %3, ptr noundef %file) #7
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then18, %if.end15.if.end24_crit_edge
  tail call void @v4l2_fh_del(ptr noundef %1) #7
  tail call void @v4l2_fh_exit(ptr noundef %1) #7
  %ext = getelementptr inbounds %struct.saa7146_dev, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ext, align 4
  %module = getelementptr inbounds %struct.saa7146_extension, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %22) #7
  %23 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #7
  %24 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lock, align 8
  tail call void @mutex_unlock(ptr noundef %25) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__fops_poll(ptr noundef %file, ptr noundef %wait) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call1 = tail call i32 @v4l2_ctrl_poll(ptr noundef %file, ptr noundef %wait) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %2 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fops_poll.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__fops_poll, %if.then7)) #7
          to label %do.end10 [label %if.then7], !srcloc !219

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__fops_poll.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, ptr noundef %file, ptr noundef %wait) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  %vfl_type = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %vfl_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vfl_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then11, label %do.body24

if.then11:                                        ; preds = %do.end10
  %dev = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %ext_vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ext_vv_data, align 4
  %capabilities = getelementptr inbounds %struct.saa7146_ext_vv, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %capabilities, align 4
  %and12 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %or15 = or i32 %call1, 260
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  %vbi_q = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 3
  %streaming = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 3, i32 12
  %11 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp17 = icmp sgt i8 %bf.load, -1
  br i1 %cmp17, label %if.then18, label %if.end16.if.end47_crit_edge

if.end16.if.end47_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 @videobuf_poll_stream(ptr noundef %file, ptr noundef %vbi_q, ptr noundef %wait) #7
  %or21 = or i32 %call20, %call1
  br label %cleanup

do.body24:                                        ; preds = %do.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %12 = load i32, ptr @saa7146_debug, align 4
  %and25 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.end46_crit_edge, label %do.body28

do.body24.do.end46_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

do.body28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fops_poll.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__fops_poll, %if.then40)) #7
          to label %do.end46 [label %if.then40], !srcloc !219

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__fops_poll.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.67) #7
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %do.body28, %do.body24.do.end46_crit_edge
  %video_q = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 2
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %if.end16.if.end47_crit_edge
  %q.0 = phi ptr [ %video_q, %do.end46 ], [ %vbi_q, %if.end16.if.end47_crit_edge ]
  %stream = getelementptr inbounds %struct.videobuf_queue, ptr %q.0, i32 0, i32 13
  %13 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %stream, align 4
  %cmp.i.not = icmp eq ptr %14, %stream
  %add.ptr = getelementptr i8, ptr %14, i32 -32
  %tobool54.not = icmp eq ptr %add.ptr, null
  %or.cond = or i1 %cmp.i.not, %tobool54.not
  br i1 %or.cond, label %do.body56, label %if.end80

do.body56:                                        ; preds = %if.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %15 = load i32, ptr @saa7146_debug, align 4
  %and57 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.do.end78_crit_edge, label %do.body60

do.body56.do.end78_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

do.body60:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fops_poll.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__fops_poll, %if.then72)) #7
          to label %do.end78 [label %if.then72], !srcloc !219

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__fops_poll.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.67) #7
  br label %do.end78

do.end78:                                         ; preds = %if.then72, %do.body60, %do.body56.do.end78_crit_edge
  %or79 = or i32 %call1, 8
  br label %cleanup

if.end80:                                         ; preds = %if.end47
  %done = getelementptr i8, ptr %14, i32 16
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end80.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end80.poll_wait.exit_crit_edge:                ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end80
  %16 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %17, null
  %tobool3.not.i = icmp eq ptr %done, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %17(ptr noundef %file, ptr noundef nonnull %done, ptr noundef nonnull %wait) #7
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end80.poll_wait.exit_crit_edge
  %state = getelementptr i8, ptr %14, i32 -4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  %20 = and i32 %19, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %switch = icmp eq i32 %20, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %21 = load i32, ptr @saa7146_debug, align 4
  %and86 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %switch, label %do.body85, label %do.body111

do.body85:                                        ; preds = %poll_wait.exit
  br i1 %tobool87.not, label %do.body85.do.end107_crit_edge, label %do.body89

do.body85.do.end107_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end107

do.body89:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fops_poll.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__fops_poll, %if.then101)) #7
          to label %do.end107 [label %if.then101], !srcloc !219

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__fops_poll.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.67) #7
  br label %do.end107

do.end107:                                        ; preds = %if.then101, %do.body89, %do.body85.do.end107_crit_edge
  %or109 = or i32 %call1, 65
  br label %cleanup

do.body111:                                       ; preds = %poll_wait.exit
  br i1 %tobool87.not, label %do.body111.cleanup_crit_edge, label %do.body115

do.body111.cleanup_crit_edge:                     ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body115:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__fops_poll.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__fops_poll, %if.then127)) #7
          to label %cleanup [label %if.then127], !srcloc !219

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__fops_poll.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.67, i32 noundef %23) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then127, %do.body115, %do.body111.cleanup_crit_edge, %do.end107, %do.end78, %if.then18, %if.then14
  %retval.0 = phi i32 [ %or15, %if.then14 ], [ %or21, %if.then18 ], [ %or109, %do.end107 ], [ %or79, %do.end78 ], [ %call1, %if.then127 ], [ %call1, %do.body111.cleanup_crit_edge ], [ %call1, %do.body115 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_poll_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_mmap_mapper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !95, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !116, !118, !120, !122, !124, !126, !128, !129, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 16, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @saa7146_res_get.__UNIQUE_ID_ddebug296, !1, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 24, i32 3}
!9 = !{ptr @saa7146_res_get.__UNIQUE_ID_ddebug297, !8, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 32, i32 2}
!13 = !{ptr @saa7146_res_get.__UNIQUE_ID_ddebug298, !12, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 45, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @saa7146_res_free.__UNIQUE_ID_ddebug299, !16, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 56, i32 2}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @saa7146_dma_free.__UNIQUE_ID_ddebug300, !21, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!24 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 73, i32 2}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @saa7146_buffer_queue.__UNIQUE_ID_ddebug301, !26, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!29 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 79, i32 3}
!32 = !{ptr @saa7146_buffer_queue.__UNIQUE_ID_ddebug302, !31, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!33 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 84, i32 3}
!36 = !{ptr @saa7146_buffer_queue.__UNIQUE_ID_ddebug303, !35, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!37 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 95, i32 2}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @saa7146_buffer_finish.__UNIQUE_ID_ddebug304, !39, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!42 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 96, i32 2}
!45 = !{ptr @saa7146_buffer_finish.__UNIQUE_ID_ddebug305, !44, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!46 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 100, i32 3}
!49 = !{ptr @saa7146_buffer_finish.__UNIQUE_ID_ddebug306, !48, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!50 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 118, i32 2}
!53 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @saa7146_buffer_next.__UNIQUE_ID_ddebug307, !52, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!55 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 128, i32 3}
!58 = !{ptr @saa7146_buffer_next.__UNIQUE_ID_ddebug308, !57, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!59 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 132, i32 3}
!62 = !{ptr @saa7146_buffer_next.__UNIQUE_ID_ddebug309, !61, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!63 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 169, i32 2}
!66 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @saa7146_buffer_timeout.__UNIQUE_ID_ddebug310, !65, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!68 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 173, i32 3}
!71 = !{ptr @saa7146_buffer_timeout.__UNIQUE_ID_ddebug311, !70, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!72 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @saa7146_vv_init._key, !74, !"_key", i1 false, i1 false}
!74 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 476, i32 2}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 497, i32 3}
!78 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @saa7146_vv_init._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @saa7146_vv_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 506, i32 2}
!83 = !{ptr @saa7146_vv_init.__UNIQUE_ID_ddebug330, !82, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!84 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @saa7146_vv_init._entry.46, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 523, i32 3}
!87 = !{ptr @saa7146_vv_init._entry_ptr.47, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @saa7146_vv_init.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 562, i32 2}
!90 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @__ksymtab_saa7146_vv_init, !92, !"__ksymtab_saa7146_vv_init", i1 false, i1 false}
!92 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 571, i32 1}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 577, i32 2}
!95 = !{ptr @saa7146_vv_release.__UNIQUE_ID_ddebug331, !94, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!96 = !{ptr @__ksymtab_saa7146_vv_release, !97, !"__ksymtab_saa7146_vv_release", i1 false, i1 false}
!97 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 589, i32 1}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 597, i32 2}
!100 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @saa7146_register_device.__UNIQUE_ID_ddebug332, !99, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!102 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 624, i32 3}
!105 = !{ptr @saa7146_register_device._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @saa7146_register_device._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 628, i32 2}
!109 = !{ptr @saa7146_register_device._entry.54, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @saa7146_register_device._entry_ptr.56, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @__ksymtab_saa7146_register_device, !112, !"__ksymtab_saa7146_register_device", i1 false, i1 false}
!112 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 632, i32 1}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 636, i32 2}
!115 = !{ptr @saa7146_unregister_device.__UNIQUE_ID_ddebug333, !114, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!116 = !{ptr @__ksymtab_saa7146_unregister_device, !117, !"__ksymtab_saa7146_unregister_device", i1 false, i1 false}
!117 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 641, i32 1}
!118 = !{ptr @__initcall__kmod_saa7146_vv__334_653_saa7146_vv_init_module6, !119, !"__initcall__kmod_saa7146_vv__334_653_saa7146_vv_init_module6", i1 false, i1 false}
!119 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 653, i32 1}
!120 = !{ptr @__exitcall_saa7146_vv_cleanup_module, !121, !"__exitcall_saa7146_vv_cleanup_module", i1 false, i1 false}
!121 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 654, i32 1}
!122 = !{ptr @__UNIQUE_ID_author335, !123, !"__UNIQUE_ID_author335", i1 false, i1 false}
!123 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 656, i32 1}
!124 = !{ptr @__UNIQUE_ID_description336, !125, !"__UNIQUE_ID_description336", i1 false, i1 false}
!125 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 657, i32 1}
!126 = !{ptr @__UNIQUE_ID_file337, !127, !"__UNIQUE_ID_file337", i1 false, i1 false}
!127 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 658, i32 1}
!128 = !{ptr @__UNIQUE_ID_license338, !127, !"__UNIQUE_ID_license338", i1 false, i1 false}
!129 = !{ptr @saa7146_ctrl_ops, !130, !"saa7146_ctrl_ops", i1 false, i1 false}
!130 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 460, i32 35}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 440, i32 2}
!133 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @vv_callback.__UNIQUE_ID_ddebug326, !132, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!135 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 443, i32 3}
!138 = !{ptr @vv_callback.__UNIQUE_ID_ddebug327, !137, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!139 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 450, i32 4}
!142 = !{ptr @vv_callback.__UNIQUE_ID_ddebug328, !141, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!143 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 455, i32 3}
!146 = !{ptr @vv_callback.__UNIQUE_ID_ddebug329, !145, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!147 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @video_fops, !149, !"video_fops", i1 false, i1 false}
!149 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 424, i32 42}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 328, i32 2}
!152 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @__fops_poll.__UNIQUE_ID_ddebug321, !151, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!154 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 337, i32 3}
!157 = !{ptr @__fops_poll.__UNIQUE_ID_ddebug322, !156, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!158 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 345, i32 3}
!161 = !{ptr @__fops_poll.__UNIQUE_ID_ddebug323, !160, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!162 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 351, i32 3}
!165 = !{ptr @__fops_poll.__UNIQUE_ID_ddebug324, !164, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!166 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 355, i32 2}
!169 = !{ptr @__fops_poll.__UNIQUE_ID_ddebug325, !168, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!170 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 296, i32 3}
!173 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @fops_mmap.__UNIQUE_ID_ddebug319, !172, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!175 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 302, i32 3}
!178 = !{ptr @fops_mmap.__UNIQUE_ID_ddebug320, !177, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!179 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 199, i32 2}
!182 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @fops_open.__UNIQUE_ID_ddebug312, !181, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!184 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 204, i32 2}
!187 = !{ptr @fops_open.__UNIQUE_ID_ddebug313, !186, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!188 = !{ptr @.str.87, !186, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 208, i32 3}
!191 = !{ptr @fops_open.__UNIQUE_ID_ddebug314, !190, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!192 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 216, i32 3}
!195 = !{ptr @fops_open.__UNIQUE_ID_ddebug315, !194, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!196 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 227, i32 3}
!199 = !{ptr @fops_open.__UNIQUE_ID_ddebug316, !198, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!200 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 233, i32 3}
!203 = !{ptr @fops_open.__UNIQUE_ID_ddebug317, !202, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!204 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/common/saa7146/saa7146_fops.c", i32 263, i32 2}
!207 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @fops_release.__UNIQUE_ID_ddebug318, !206, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!209 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"min_enum_size", i32 4}
!212 = !{i32 8, !"branch-target-enforcement", i32 0}
!213 = !{i32 8, !"sign-return-address", i32 0}
!214 = !{i32 8, !"sign-return-address-all", i32 0}
!215 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!219 = !{i64 2148825985, i64 2148825990, i64 2148826003, i64 2148826047, i64 2148826081, i64 2148826102}
!220 = !{!"branch_weights", i32 2000, i32 1}
!221 = !{i64 2156619534, i64 2156620041, i64 2156619571, i64 2156619627, i64 2156619661, i64 2156619685, i64 2156619726, i64 2156619747, i64 2156619775, i64 2156619809}
!222 = !{!"branch_weights", i32 1, i32 2000}
!223 = !{i64 2156626817, i64 2156627324, i64 2156626854, i64 2156626910, i64 2156626944, i64 2156626968, i64 2156627009, i64 2156627030, i64 2156627058, i64 2156627092}
!224 = !{i64 2156631142, i64 2156631649, i64 2156631179, i64 2156631235, i64 2156631269, i64 2156631293, i64 2156631334, i64 2156631355, i64 2156631383, i64 2156631417}
!225 = !{i64 2156638774, i64 2156639281, i64 2156638811, i64 2156638867, i64 2156638901, i64 2156638925, i64 2156638966, i64 2156638987, i64 2156639015, i64 2156639049}
!226 = !{i64 2156648444, i64 2156648952, i64 2156648481, i64 2156648537, i64 2156648571, i64 2156648595, i64 2156648636, i64 2156648657, i64 2156648685, i64 2156648719}
!227 = !{i64 2156653060, i64 2156653568, i64 2156653097, i64 2156653153, i64 2156653187, i64 2156653211, i64 2156653252, i64 2156653273, i64 2156653301, i64 2156653335}
!228 = !{i64 7165844}
!229 = !{i64 2156664000}
!230 = !{i64 2156664576}
!231 = !{i64 2156665166}
!232 = !{i64 2156737557}
!233 = !{i64 2156738110}
!234 = !{i64 7166262}
!235 = !{i64 2156726155}
!236 = !{i64 2156729351}
!237 = !{i64 2156717434, i64 2156717942, i64 2156717471, i64 2156717527, i64 2156717561, i64 2156717585, i64 2156717626, i64 2156717647, i64 2156717675, i64 2156717709}
!238 = !{i64 2156719046, i64 2156719554, i64 2156719083, i64 2156719139, i64 2156719173, i64 2156719197, i64 2156719238, i64 2156719259, i64 2156719287, i64 2156719321}
!239 = !{i64 2156701133, i64 2156701641, i64 2156701170, i64 2156701226, i64 2156701260, i64 2156701284, i64 2156701325, i64 2156701346, i64 2156701374, i64 2156701408}
