; ModuleID = '/llk/IR_all_yes/drivers/media/common/videobuf2/videobuf2-dvb.c_pt.bc'
source_filename = "../drivers/media/common/videobuf2/videobuf2-dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vb2_dvb_register_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_vb2_dvb_register_bus\09\09\09\09"
module asm "\09.long\09__crc_vb2_dvb_register_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_dvb_register_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_dvb_register_bus\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_dvb_register_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vb2_dvb_unregister_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_vb2_dvb_unregister_bus\09\09\09\09"
module asm "\09.long\09__crc_vb2_dvb_unregister_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_dvb_unregister_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_dvb_unregister_bus\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_dvb_unregister_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vb2_dvb_get_frontend\22, \22a\22\09"
module asm "\09.weak\09__crc_vb2_dvb_get_frontend\09\09\09\09"
module asm "\09.long\09__crc_vb2_dvb_get_frontend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_dvb_get_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_dvb_get_frontend\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_dvb_get_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vb2_dvb_find_frontend\22, \22a\22\09"
module asm "\09.weak\09__crc_vb2_dvb_find_frontend\09\09\09\09"
module asm "\09.long\09__crc_vb2_dvb_find_frontend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_dvb_find_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_dvb_find_frontend\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_dvb_find_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vb2_dvb_alloc_frontend\22, \22a\22\09"
module asm "\09.weak\09__crc_vb2_dvb_alloc_frontend\09\09\09\09"
module asm "\09.long\09__crc_vb2_dvb_alloc_frontend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_dvb_alloc_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_dvb_alloc_frontend\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_dvb_alloc_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vb2_dvb_dealloc_frontends\22, \22a\22\09"
module asm "\09.weak\09__crc_vb2_dvb_dealloc_frontends\09\09\09\09"
module asm "\09.long\09__crc_vb2_dvb_dealloc_frontends\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_dvb_dealloc_frontends:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_dvb_dealloc_frontends\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_dvb_dealloc_frontends:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.vb2_dvb_frontend = type { %struct.list_head, i32, %struct.vb2_dvb }
%struct.vb2_dvb = type { ptr, ptr, %struct.vb2_queue, %struct.mutex, i32, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_demux_feed = type { %union.anon.134, %union.anon.135, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.134 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.135 = type { ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.133, i32 }
%union.anon.133 = type { i32 }

@__UNIQUE_ID_author381 = internal constant [65 x i8] c"videobuf2_dvb.author=Gerd Knorr <kraxel@bytesex.org> [SuSE Labs]\00", section ".modinfo", align 1
@__UNIQUE_ID_file382 = internal constant [64 x i8] c"videobuf2_dvb.file=drivers/media/common/videobuf2/videobuf2-dvb\00", section ".modinfo", align 1
@__UNIQUE_ID_license383 = internal constant [26 x i8] c"videobuf2_dvb.license=GPL\00", section ".modinfo", align 1
@vb2_dvb_register_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014Unable to register the adapter which has no frontends\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vb2_dvb_register_bus\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/media/common/videobuf2/videobuf2-dvb.c\00", [49 x i8] zeroinitializer }, align 32
@vb2_dvb_register_bus._entry_ptr = internal global ptr @vb2_dvb_register_bus._entry, section ".printk_index", align 4
@vb2_dvb_register_bus._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014vb2_dvb_register_adapter failed (errno = %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@vb2_dvb_register_bus._entry_ptr.5 = internal global ptr @vb2_dvb_register_bus._entry.3, section ".printk_index", align 4
@vb2_dvb_register_bus._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s: vb2_dvb_register_frontend failed (errno = %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@vb2_dvb_register_bus._entry_ptr.8 = internal global ptr @vb2_dvb_register_bus._entry.6, section ".printk_index", align 4
@__kstrtab_vb2_dvb_register_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_dvb_register_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_dvb_register_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_dvb_register_bus to i32), ptr @__kstrtab_vb2_dvb_register_bus, ptr @__kstrtabns_vb2_dvb_register_bus }, section "___ksymtab+vb2_dvb_register_bus", align 4
@__kstrtab_vb2_dvb_unregister_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_dvb_unregister_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_dvb_unregister_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_dvb_unregister_bus to i32), ptr @__kstrtab_vb2_dvb_unregister_bus, ptr @__kstrtabns_vb2_dvb_unregister_bus }, section "___ksymtab+vb2_dvb_unregister_bus", align 4
@__kstrtab_vb2_dvb_get_frontend = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_dvb_get_frontend = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_dvb_get_frontend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_dvb_get_frontend to i32), ptr @__kstrtab_vb2_dvb_get_frontend, ptr @__kstrtabns_vb2_dvb_get_frontend }, section "___ksymtab+vb2_dvb_get_frontend", align 4
@__kstrtab_vb2_dvb_find_frontend = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_dvb_find_frontend = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_dvb_find_frontend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_dvb_find_frontend to i32), ptr @__kstrtab_vb2_dvb_find_frontend, ptr @__kstrtabns_vb2_dvb_find_frontend }, section "___ksymtab+vb2_dvb_find_frontend", align 4
@vb2_dvb_alloc_frontend.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&fe->dvb.lock\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_vb2_dvb_alloc_frontend = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_dvb_alloc_frontend = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_dvb_alloc_frontend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_dvb_alloc_frontend to i32), ptr @__kstrtab_vb2_dvb_alloc_frontend, ptr @__kstrtabns_vb2_dvb_alloc_frontend }, section "___ksymtab+vb2_dvb_alloc_frontend", align 4
@__kstrtab_vb2_dvb_dealloc_frontends = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_dvb_dealloc_frontends = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_dvb_dealloc_frontends = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_dvb_dealloc_frontends to i32), ptr @__kstrtab_vb2_dvb_dealloc_frontends, ptr @__kstrtabns_vb2_dvb_dealloc_frontends }, section "___ksymtab+vb2_dvb_dealloc_frontends", align 4
@vb2_dvb_register_adapter.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&fe->lock\00", [22 x i8] zeroinitializer }, align 32
@vb2_dvb_register_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014%s: dvb_register_adapter failed (errno = %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vb2_dvb_register_adapter\00", [39 x i8] zeroinitializer }, align 32
@vb2_dvb_register_adapter._entry_ptr = internal global ptr @vb2_dvb_register_adapter._entry, section ".printk_index", align 4
@vb2_dvb_register_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: dvb_register_frontend failed (errno = %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vb2_dvb_register_frontend\00", [38 x i8] zeroinitializer }, align 32
@vb2_dvb_register_frontend._entry_ptr = internal global ptr @vb2_dvb_register_frontend._entry, section ".printk_index", align 4
@vb2_dvb_register_frontend._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: dvb_dmx_init failed (errno = %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@vb2_dvb_register_frontend._entry_ptr.17 = internal global ptr @vb2_dvb_register_frontend._entry.15, section ".printk_index", align 4
@vb2_dvb_register_frontend._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: dvb_dmxdev_init failed (errno = %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@vb2_dvb_register_frontend._entry_ptr.20 = internal global ptr @vb2_dvb_register_frontend._entry.18, section ".printk_index", align 4
@vb2_dvb_register_frontend._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014%s: add_frontend failed (DMX_FRONTEND_0, errno = %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@vb2_dvb_register_frontend._entry_ptr.23 = internal global ptr @vb2_dvb_register_frontend._entry.21, section ".printk_index", align 4
@vb2_dvb_register_frontend._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014%s: add_frontend failed (DMX_MEMORY_FE, errno = %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@vb2_dvb_register_frontend._entry_ptr.26 = internal global ptr @vb2_dvb_register_frontend._entry.24, section ".printk_index", align 4
@vb2_dvb_register_frontend._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: connect_frontend failed (errno = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@vb2_dvb_register_frontend._entry_ptr.29 = internal global ptr @vb2_dvb_register_frontend._entry.27, section ".printk_index", align 4
@vb2_dvb_register_frontend._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.14, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: dvb_net_init failed (errno = %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@vb2_dvb_register_frontend._entry_ptr.32 = internal global ptr @vb2_dvb_register_frontend._entry.30, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 206, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 214, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 224, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 306, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 83, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 89, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 109, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 125, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 136, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 144, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 152, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 159, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [50 x i8] c"../drivers/media/common/videobuf2/videobuf2-dvb.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 167, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author381, ptr @__UNIQUE_ID_file382, ptr @__UNIQUE_ID_license383, ptr @__ksymtab_vb2_dvb_alloc_frontend, ptr @__ksymtab_vb2_dvb_dealloc_frontends, ptr @__ksymtab_vb2_dvb_find_frontend, ptr @__ksymtab_vb2_dvb_get_frontend, ptr @__ksymtab_vb2_dvb_register_bus, ptr @__ksymtab_vb2_dvb_unregister_bus, ptr @vb2_dvb_register_adapter._entry, ptr @vb2_dvb_register_adapter._entry_ptr, ptr @vb2_dvb_register_bus._entry, ptr @vb2_dvb_register_bus._entry.3, ptr @vb2_dvb_register_bus._entry.6, ptr @vb2_dvb_register_bus._entry_ptr, ptr @vb2_dvb_register_bus._entry_ptr.5, ptr @vb2_dvb_register_bus._entry_ptr.8, ptr @vb2_dvb_register_frontend._entry, ptr @vb2_dvb_register_frontend._entry.15, ptr @vb2_dvb_register_frontend._entry.18, ptr @vb2_dvb_register_frontend._entry.21, ptr @vb2_dvb_register_frontend._entry.24, ptr @vb2_dvb_register_frontend._entry.27, ptr @vb2_dvb_register_frontend._entry.30, ptr @vb2_dvb_register_frontend._entry_ptr, ptr @vb2_dvb_register_frontend._entry_ptr.17, ptr @vb2_dvb_register_frontend._entry_ptr.20, ptr @vb2_dvb_register_frontend._entry_ptr.23, ptr @vb2_dvb_register_frontend._entry_ptr.26, ptr @vb2_dvb_register_frontend._entry_ptr.29, ptr @vb2_dvb_register_frontend._entry_ptr.32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @vb2_dvb_alloc_frontend.__key, ptr @.str.9, ptr @vb2_dvb_register_adapter.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dvb_register_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dvb_register_bus._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dvb_register_bus._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dvb_alloc_frontend.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dvb_register_adapter.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dvb_register_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dvb_register_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dvb_register_frontend._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dvb_register_frontend._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dvb_register_frontend._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dvb_register_frontend._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dvb_register_frontend._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_dvb_register_frontend._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vb2_dvb_register_bus(ptr noundef %f, ptr noundef %module, ptr noundef %adapter_priv, ptr noundef %device, ptr noundef %mdev, ptr noundef %adapter_nr, i32 noundef %mfe_shared) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.vb2_dvb_frontends, ptr %f, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %list.0.in.i = phi ptr [ %f, %entry ], [ %list.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %list.0.i = load ptr, ptr %list.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %list.0.i, %f
  br i1 %cmp.i.not.i, label %vb2_dvb_get_frontend.exit.thread, label %for.body.i

vb2_dvb_get_frontend.exit.thread:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %id3.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id3.i, align 8
  %cmp.i = icmp eq i32 %2, 1
  br i1 %cmp.i, label %vb2_dvb_get_frontend.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

vb2_dvb_get_frontend.exit:                        ; preds = %for.body.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  %tobool.not = icmp eq ptr %list.0.i, null
  br i1 %tobool.not, label %vb2_dvb_get_frontend.exit.do.end_crit_edge, label %if.end

vb2_dvb_get_frontend.exit.do.end_crit_edge:       ; preds = %vb2_dvb_get_frontend.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %vb2_dvb_get_frontend.exit.do.end_crit_edge, %vb2_dvb_get_frontend.exit.thread
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %vb2_dvb_get_frontend.exit
  %dvb = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dvb, align 8
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @vb2_dvb_register_adapter.__key) #4
  %adapter.i = getelementptr inbounds %struct.vb2_dvb_frontends, ptr %f, i32 0, i32 2
  %call.i = tail call i32 @dvb_register_adapter(ptr noundef %adapter.i, ptr noundef %4, ptr noundef %module, ptr noundef %device, ptr noundef %adapter_nr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i60 = icmp slt i32 %call.i, 0
  br i1 %cmp.i60, label %do.end3.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end3.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %4, i32 noundef %call.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end3.i, %if.end.if.end.i_crit_edge
  %priv.i = getelementptr inbounds %struct.vb2_dvb_frontends, ptr %f, i32 0, i32 2, i32 5
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %adapter_priv, ptr %priv.i, align 4
  %mfe_shared7.i = getelementptr inbounds %struct.vb2_dvb_frontends, ptr %f, i32 0, i32 2, i32 8
  %6 = ptrtoint ptr %mfe_shared7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mfe_shared, ptr %mfe_shared7.i, align 4
  %tobool.not.i = icmp eq ptr %mdev, null
  br i1 %tobool.not.i, label %if.end.i.vb2_dvb_register_adapter.exit_crit_edge, label %if.then8.i

if.end.i.vb2_dvb_register_adapter.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_dvb_register_adapter.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %mdev10.i = getelementptr inbounds %struct.vb2_dvb_frontends, ptr %f, i32 0, i32 2, i32 12
  %7 = ptrtoint ptr %mdev10.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mdev, ptr %mdev10.i, align 4
  br label %vb2_dvb_register_adapter.exit

vb2_dvb_register_adapter.exit:                    ; preds = %if.then8.i, %if.end.i.vb2_dvb_register_adapter.exit_crit_edge
  br i1 %cmp.i60, label %do.end6, label %if.end9

do.end6:                                          ; preds = %vb2_dvb_register_adapter.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call.i) #7
  br label %cleanup

if.end9:                                          ; preds = %vb2_dvb_register_adapter.exit
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end26.for.cond_crit_edge, %if.end9
  %list.0 = phi ptr [ %9, %if.end9 ], [ %q.0, %if.end26.for.cond_crit_edge ]
  %10 = ptrtoint ptr %list.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %q.0 = load ptr, ptr %list.0, align 4
  %cmp.i61.not = icmp eq ptr %list.0, %f
  br i1 %cmp.i61.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %dvb15 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2
  %frontend.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %frontend.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %frontend.i, align 4
  %call.i62 = tail call i32 @dvb_register_frontend(ptr noundef %adapter.i, ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp.i63 = icmp slt i32 %call.i62, 0
  br i1 %cmp.i63, label %do.end.i, label %if.end.i65

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %frontend.i.le364 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %dvb15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dvb15, align 8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %14, i32 noundef %call.i62) #7
  br label %do.end21

if.end.i65:                                       ; preds = %for.body
  %demux.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %demux.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 13, ptr %demux.i, align 8
  %priv.i64 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 5, i32 1
  %16 = ptrtoint ptr %priv.i64 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dvb15, ptr %priv.i64, align 4
  %filternum.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 5, i32 2
  %17 = ptrtoint ptr %filternum.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 256, ptr %filternum.i, align 8
  %feednum.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 5, i32 3
  %18 = ptrtoint ptr %feednum.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 256, ptr %feednum.i, align 4
  %start_feed.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 5, i32 4
  %19 = ptrtoint ptr %start_feed.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @vb2_dvb_start_feed, ptr %start_feed.i, align 8
  %stop_feed.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 5, i32 5
  %20 = ptrtoint ptr %stop_feed.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @vb2_dvb_stop_feed, ptr %stop_feed.i, align 4
  %call8.i = tail call i32 @dvb_dmx_init(ptr noundef %demux.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end13.i, label %if.end17.i

do.end13.i:                                       ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %dvb15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dvb15, align 8
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %22, i32 noundef %call8.i) #7
  br label %fail_dmx.i

if.end17.i:                                       ; preds = %if.end.i65
  %dmxdev.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 6
  %filternum18.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 6, i32 4
  %23 = ptrtoint ptr %filternum18.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %filternum18.i, align 8
  %demux22.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 6, i32 3
  %24 = ptrtoint ptr %demux22.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %demux.i, ptr %demux22.i, align 4
  %capabilities24.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 6, i32 5
  %25 = ptrtoint ptr %capabilities24.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %capabilities24.i, align 4
  %call26.i = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev.i, ptr noundef %adapter.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %do.end31.i, label %if.end35.i

do.end31.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %dvb15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dvb15, align 8
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %27, i32 noundef %call26.i) #7
  br label %fail_dmxdev.i

if.end35.i:                                       ; preds = %if.end17.i
  %fe_hw.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 7
  %source.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 7, i32 1
  %28 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %source.i, align 8
  %add_frontend.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 5, i32 0, i32 10
  %29 = ptrtoint ptr %add_frontend.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add_frontend.i, align 8
  %call41.i = tail call i32 %30(ptr noundef %demux.i, ptr noundef %fe_hw.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %do.end46.i, label %if.end50.i

do.end46.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %dvb15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dvb15, align 8
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %32, i32 noundef %call41.i) #7
  br label %fail_fe_hw.i

if.end50.i:                                       ; preds = %if.end35.i
  %fe_mem.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 8
  %source51.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 8, i32 1
  %33 = ptrtoint ptr %source51.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %source51.i, align 4
  %34 = ptrtoint ptr %add_frontend.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add_frontend.i, align 8
  %call58.i = tail call i32 %35(ptr noundef %demux.i, ptr noundef %fe_mem.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %cmp59.i = icmp slt i32 %call58.i, 0
  br i1 %cmp59.i, label %do.end63.i, label %if.end67.i

do.end63.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %dvb15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dvb15, align 8
  %call66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %37, i32 noundef %call58.i) #7
  br label %fail_fe_mem.i

if.end67.i:                                       ; preds = %if.end50.i
  %connect_frontend.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 5, i32 0, i32 13
  %38 = ptrtoint ptr %connect_frontend.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %connect_frontend.i, align 4
  %call73.i = tail call i32 %39(ptr noundef %demux.i, ptr noundef %fe_hw.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %cmp74.i = icmp slt i32 %call73.i, 0
  br i1 %cmp74.i, label %do.end78.i, label %if.end82.i

do.end78.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %dvb15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dvb15, align 8
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %41, i32 noundef %call73.i) #7
  br label %fail_fe_conn.i

if.end82.i:                                       ; preds = %if.end67.i
  %net.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 9
  %call85.i = tail call i32 @dvb_net_init(ptr noundef %adapter.i, ptr noundef %net.i, ptr noundef %demux.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %cmp86.i = icmp slt i32 %call85.i, 0
  br i1 %cmp86.i, label %do.end90.i, label %if.end26

do.end90.i:                                       ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %dvb15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dvb15, align 8
  %call93.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %43, i32 noundef %call85.i) #7
  br label %fail_fe_conn.i

fail_fe_conn.i:                                   ; preds = %do.end90.i, %do.end78.i
  %result.0.i = phi i32 [ %call73.i, %do.end78.i ], [ %call85.i, %do.end90.i ]
  %remove_frontend.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 5, i32 0, i32 11
  %44 = ptrtoint ptr %remove_frontend.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %remove_frontend.i, align 4
  %call100.i = tail call i32 %45(ptr noundef %demux.i, ptr noundef %fe_mem.i) #4
  br label %fail_fe_mem.i

fail_fe_mem.i:                                    ; preds = %fail_fe_conn.i, %do.end63.i
  %result.1.i = phi i32 [ %call58.i, %do.end63.i ], [ %result.0.i, %fail_fe_conn.i ]
  %remove_frontend103.i = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 5, i32 0, i32 11
  %46 = ptrtoint ptr %remove_frontend103.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %remove_frontend103.i, align 4
  %call107.i = tail call i32 %47(ptr noundef %demux.i, ptr noundef %fe_hw.i) #4
  br label %fail_fe_hw.i

fail_fe_hw.i:                                     ; preds = %fail_fe_mem.i, %do.end46.i
  %result.2.i = phi i32 [ %call41.i, %do.end46.i ], [ %result.1.i, %fail_fe_mem.i ]
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev.i) #4
  br label %fail_dmxdev.i

fail_dmxdev.i:                                    ; preds = %fail_fe_hw.i, %do.end31.i
  %result.3.i = phi i32 [ %call26.i, %do.end31.i ], [ %result.2.i, %fail_fe_hw.i ]
  tail call void @dvb_dmx_release(ptr noundef %demux.i) #4
  br label %fail_dmx.i

fail_dmx.i:                                       ; preds = %fail_dmxdev.i, %do.end13.i
  %result.4.i = phi i32 [ %call8.i, %do.end13.i ], [ %result.3.i, %fail_dmxdev.i ]
  %frontend.i286 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %frontend.i286 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %frontend.i286, align 4
  %call111.i = tail call i32 @dvb_unregister_frontend(ptr noundef %49) #4
  br label %do.end21

do.end21:                                         ; preds = %fail_dmx.i, %do.end.i
  %frontend.i285 = phi ptr [ %frontend.i.le364, %do.end.i ], [ %frontend.i286, %fail_dmx.i ]
  %result.5.i = phi i32 [ %call.i62, %do.end.i ], [ %result.4.i, %fail_dmx.i ]
  %50 = ptrtoint ptr %frontend.i285 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %frontend.i285, align 4
  tail call void @dvb_frontend_detach(ptr noundef %51) #4
  %52 = ptrtoint ptr %frontend.i285 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %frontend.i285, align 4
  %53 = ptrtoint ptr %dvb15 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dvb15, align 8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %54, i32 noundef %result.5.i) #7
  br label %err

if.end26:                                         ; preds = %if.end82.i
  %call28 = tail call i32 @dvb_create_media_graph(ptr noundef %adapter.i, i1 noundef zeroext false) #4
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26.err_crit_edge, label %if.end26.for.cond_crit_edge

if.end26.for.cond_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.end26.err_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %cleanup

err:                                              ; preds = %if.end26.err_crit_edge, %do.end21
  %res.0 = phi i32 [ %result.5.i, %do.end21 ], [ %call28, %if.end26.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  tail call void @vb2_dvb_dealloc_frontends(ptr noundef %f) #4
  %call.i67 = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter.i) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end, %do.end6, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end6 ], [ %res.0, %err ], [ 0, %for.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vb2_dvb_get_frontend(ptr noundef %f, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vb2_dvb_frontends, ptr %f, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %list.0.in = phi ptr [ %f, %entry ], [ %list.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %list.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %list.0 = load ptr, ptr %list.0.in, align 4
  %cmp.i.not = icmp eq ptr %list.0, %f
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %id3 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 1
  %1 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id3, align 8
  %cmp = icmp eq i32 %2, %id
  br i1 %cmp, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %ret.0 = phi ptr [ null, %for.cond.for.end_crit_edge ], [ %list.0, %for.body.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret ptr %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_create_media_graph(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vb2_dvb_unregister_bus(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vb2_dvb_dealloc_frontends(ptr noundef %f)
  %adapter = getelementptr inbounds %struct.vb2_dvb_frontends, ptr %f, i32 0, i32 2
  %call = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vb2_dvb_dealloc_frontends(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vb2_dvb_frontends, ptr %f, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 4
  %cmp.i.not56 = icmp eq ptr %1, %f
  br i1 %cmp.i.not56, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %list.057 = phi ptr [ %q.059, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %list.057 to i32
  call void @__asan_load4_noabort(i32 %2)
  %q.059 = load ptr, ptr %list.057, align 4
  %net = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.057, i32 0, i32 2, i32 9
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 8
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dvb_net_release(ptr noundef %net) #4
  %demux = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.057, i32 0, i32 2, i32 5
  %remove_frontend = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.057, i32 0, i32 2, i32 5, i32 0, i32 11
  %5 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remove_frontend, align 4
  %fe_mem = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.057, i32 0, i32 2, i32 8
  %call11 = tail call i32 %6(ptr noundef %demux, ptr noundef %fe_mem) #4
  %7 = ptrtoint ptr %remove_frontend to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remove_frontend, align 4
  %fe_hw = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.057, i32 0, i32 2, i32 7
  %call20 = tail call i32 %8(ptr noundef %demux, ptr noundef %fe_hw) #4
  %dmxdev = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.057, i32 0, i32 2, i32 6
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #4
  tail call void @dvb_dmx_release(ptr noundef %demux) #4
  %frontend = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.057, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %frontend, align 4
  %call25 = tail call i32 @dvb_unregister_frontend(ptr noundef %10) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %frontend27 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.057, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %frontend27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %frontend27, align 4
  %tobool28.not = icmp eq ptr %12, null
  br i1 %tobool28.not, label %if.end.if.end32_crit_edge, label %if.then29

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dvb_frontend_detach(ptr noundef nonnull %12) #4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end.if.end32_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.057) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end32.list_del.exit_crit_edge

if.end32.list_del.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %list.057, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %list.057 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list.057, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end32.list_del.exit_crit_edge
  %19 = ptrtoint ptr %list.057 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %list.057, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list.057, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %list.057) #4
  %cmp.i.not = icmp eq ptr %q.059, %f
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vb2_dvb_find_frontend(ptr noundef %f, ptr noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vb2_dvb_frontends, ptr %f, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %list.0.in = phi ptr [ %f, %entry ], [ %list.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %list.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %list.0 = load ptr, ptr %list.0.in, align 4
  %cmp.i.not = icmp eq ptr %list.0, %f
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %frontend = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %frontend, align 4
  %cmp = icmp eq ptr %2, %p
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %id = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %list.0, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  %ret.0 = phi i32 [ %4, %if.then ], [ 0, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vb2_dvb_alloc_frontend(ptr noundef %f, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2464) #8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %id1 = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %id1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %id, ptr %id1, align 8
  %lock = getelementptr inbounds %struct.vb2_dvb_frontend, ptr %call7.i.i, i32 0, i32 2, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @vb2_dvb_alloc_frontend.__key) #4
  %lock2 = getelementptr inbounds %struct.vb2_dvb_frontends, ptr %f, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock2, i32 noundef 0) #4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %3, ptr noundef %f) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %f, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock2) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dvb_start_feed(ptr nocapture noundef readonly %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frontend, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.vb2_dvb, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %nfeeds = getelementptr inbounds %struct.vb2_dvb, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %nfeeds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nfeeds, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %nfeeds, align 4
  %threadio = getelementptr inbounds %struct.vb2_dvb, ptr %3, i32 0, i32 2, i32 30
  %8 = ptrtoint ptr %threadio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %threadio, align 8
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.then11_crit_edge

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

if.then3:                                         ; preds = %if.end
  %dvbq = getelementptr inbounds %struct.vb2_dvb, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %call = tail call i32 @vb2_thread_start(ptr noundef %dvbq, ptr noundef nonnull @dvb_fnc, ptr noundef %3, ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then3.if.then11_crit_edge, label %if.end9

if.then3.if.then11_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

if.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %nfeeds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nfeeds, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %nfeeds, align 4
  br label %if.end13

if.then11:                                        ; preds = %if.then3.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %14 = ptrtoint ptr %nfeeds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nfeeds, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %rc.1 = phi i32 [ %call, %if.end9 ], [ %15, %if.then11 ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %if.end13 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vb2_dvb_stop_feed(ptr nocapture noundef readonly %feed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.vb2_dvb, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %nfeeds = getelementptr inbounds %struct.vb2_dvb, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %nfeeds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nfeeds, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %nfeeds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dvbq = getelementptr inbounds %struct.vb2_dvb, ptr %3, i32 0, i32 2
  %call = tail call i32 @vb2_thread_stop(ptr noundef %dvbq) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_thread_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_fnc(ptr noundef %vb, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %0 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %entry.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

entry.vb2_get_plane_payload.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %2 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %entry.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %3, %if.then.i ], [ 0, %entry.vb2_get_plane_payload.exit_crit_edge ]
  %demux = getelementptr inbounds %struct.vb2_dvb, ptr %priv, i32 0, i32 5
  tail call void @dvb_dmx_swfilter(ptr noundef %demux, ptr noundef %call, i32 noundef %retval.0.i) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_thread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__UNIQUE_ID_author381, !1, !"__UNIQUE_ID_author381", i1 false, i1 false}
!1 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_file382, !3, !"__UNIQUE_ID_file382", i1 false, i1 false}
!3 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_license383, !3, !"__UNIQUE_ID_license383", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 206, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @vb2_dvb_register_bus._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @vb2_dvb_register_bus._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 214, i32 3}
!13 = !{ptr @vb2_dvb_register_bus._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @vb2_dvb_register_bus._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 224, i32 4}
!17 = !{ptr @vb2_dvb_register_bus._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @vb2_dvb_register_bus._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_vb2_dvb_register_bus, !20, !"__ksymtab_vb2_dvb_register_bus", i1 false, i1 false}
!20 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 241, i32 1}
!21 = !{ptr @__ksymtab_vb2_dvb_unregister_bus, !22, !"__ksymtab_vb2_dvb_unregister_bus", i1 false, i1 false}
!22 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 249, i32 1}
!23 = !{ptr @__ksymtab_vb2_dvb_get_frontend, !24, !"__ksymtab_vb2_dvb_get_frontend", i1 false, i1 false}
!24 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 271, i32 1}
!25 = !{ptr @__ksymtab_vb2_dvb_find_frontend, !26, !"__ksymtab_vb2_dvb_find_frontend", i1 false, i1 false}
!26 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 294, i32 1}
!27 = !{ptr @vb2_dvb_alloc_frontend.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 306, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__ksymtab_vb2_dvb_alloc_frontend, !31, !"__ksymtab_vb2_dvb_alloc_frontend", i1 false, i1 false}
!31 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 313, i32 1}
!32 = !{ptr @__ksymtab_vb2_dvb_dealloc_frontends, !33, !"__ksymtab_vb2_dvb_dealloc_frontends", i1 false, i1 false}
!33 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 341, i32 1}
!34 = !{ptr @vb2_dvb_register_adapter.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 83, i32 2}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 89, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vb2_dvb_register_adapter._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @vb2_dvb_register_adapter._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 109, i32 3}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vb2_dvb_register_frontend._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @vb2_dvb_register_frontend._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 125, i32 3}
!49 = !{ptr @vb2_dvb_register_frontend._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @vb2_dvb_register_frontend._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 136, i32 3}
!53 = !{ptr @vb2_dvb_register_frontend._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @vb2_dvb_register_frontend._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 144, i32 3}
!57 = !{ptr @vb2_dvb_register_frontend._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @vb2_dvb_register_frontend._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 152, i32 3}
!61 = !{ptr @vb2_dvb_register_frontend._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @vb2_dvb_register_frontend._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 159, i32 3}
!65 = !{ptr @vb2_dvb_register_frontend._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @vb2_dvb_register_frontend._entry_ptr.29, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/common/videobuf2/videobuf2-dvb.c", i32 167, i32 3}
!69 = !{ptr @vb2_dvb_register_frontend._entry.30, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @vb2_dvb_register_frontend._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
