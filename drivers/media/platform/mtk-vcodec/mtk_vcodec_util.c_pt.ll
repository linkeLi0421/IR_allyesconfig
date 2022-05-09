; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mtk_vcodec_get_reg_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_vcodec_get_reg_addr\09\09\09\09"
module asm "\09.long\09__crc_mtk_vcodec_get_reg_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_vcodec_get_reg_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_vcodec_get_reg_addr\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_vcodec_get_reg_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mtk_vcodec_mem_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_vcodec_mem_alloc\09\09\09\09"
module asm "\09.long\09__crc_mtk_vcodec_mem_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_vcodec_mem_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_vcodec_mem_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_vcodec_mem_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mtk_vcodec_mem_free\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_vcodec_mem_free\09\09\09\09"
module asm "\09.long\09__crc_mtk_vcodec_mem_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_vcodec_mem_free:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_vcodec_mem_free\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_vcodec_mem_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mtk_vcodec_set_curr_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_vcodec_set_curr_ctx\09\09\09\09"
module asm "\09.long\09__crc_mtk_vcodec_set_curr_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_vcodec_set_curr_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_vcodec_set_curr_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_vcodec_set_curr_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mtk_vcodec_get_curr_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_vcodec_get_curr_ctx\09\09\09\09"
module asm "\09.long\09__crc_mtk_vcodec_get_curr_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_vcodec_get_curr_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_vcodec_get_curr_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_vcodec_get_curr_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mtk_vcodec_ctx = type { i32, ptr, %struct.list_head, %struct.v4l2_fh, ptr, [2 x %struct.mtk_q_data], i32, i32, i32, %struct.mtk_enc_params, ptr, ptr, ptr, %struct.vdec_pic_info, i32, i32, i32, %struct.wait_queue_head, i32, %struct.v4l2_ctrl_handler, %struct.work_struct, %struct.work_struct, %struct.vdec_pic_info, %struct.v4l2_m2m_buffer, i8, i32, i32, i32, i32, i32, i32, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.mtk_q_data = type { i32, i32, i32, i32, i32, [3 x i32], [3 x i32], ptr }
%struct.mtk_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vdec_pic_info = type { i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mtk_vcodec_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, [14 x ptr], ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, %struct.mutex, %struct.mutex, %struct.mtk_vcodec_pm, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mtk_vcodec_pm = type { %struct.mtk_vcodec_clk, ptr, %struct.mtk_vcodec_clk, ptr, ptr, ptr }
%struct.mtk_vcodec_clk = type { ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk_vcodec_mem = type { i32, ptr, i32 }

@mtk_vcodec_get_reg_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 19, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Invalid arguments, reg_idx=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_vcodec_get_reg_addr\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c\00", [44 x i8] zeroinitializer }, align 32
@mtk_vcodec_get_reg_addr._entry_ptr = internal global ptr @mtk_vcodec_get_reg_addr._entry, section ".printk_index", align 4
@__kstrtab_mtk_vcodec_get_reg_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_vcodec_get_reg_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_vcodec_get_reg_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_vcodec_get_reg_addr to i32), ptr @__kstrtab_mtk_vcodec_get_reg_addr, ptr @__kstrtabns_mtk_vcodec_get_reg_addr }, section "___ksymtab+mtk_vcodec_get_reg_addr", align 4
@mtk_vcodec_mem_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] %s dma_alloc size=%ld failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_vcodec_mem_alloc\00", [43 x i8] zeroinitializer }, align 32
@mtk_vcodec_mem_alloc._entry_ptr = internal global ptr @mtk_vcodec_mem_alloc._entry, section ".printk_index", align 4
@mtk_vcodec_mem_alloc.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_vcodec_common\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%d]  - va      = %p\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(),%d: [%d]  - va      = %p\00", [34 x i8] zeroinitializer }, align 32
@mtk_vcodec_mem_alloc.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%d]  - dma     = 0x%lx\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(),%d: [%d]  - dma     = 0x%lx\00", [63 x i8] zeroinitializer }, align 32
@mtk_vcodec_mem_alloc.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.4, ptr @.str.2, ptr @.str.10, i8 0, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%d]    size = 0x%lx\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(),%d: [%d]    size = 0x%lx\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_mtk_vcodec_mem_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_vcodec_mem_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_vcodec_mem_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_vcodec_mem_alloc to i32), ptr @__kstrtab_mtk_vcodec_mem_alloc, ptr @__kstrtabns_mtk_vcodec_mem_alloc }, section "___ksymtab+mtk_vcodec_mem_alloc", align 4
@mtk_vcodec_mem_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] %s dma_free size=%ld failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_vcodec_mem_free\00", [44 x i8] zeroinitializer }, align 32
@mtk_vcodec_mem_free._entry_ptr = internal global ptr @mtk_vcodec_mem_free._entry, section ".printk_index", align 4
@mtk_vcodec_mem_free.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.13, ptr @.str.2, ptr @.str.6, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mtk_vcodec_mem_free.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.13, ptr @.str.2, ptr @.str.8, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mtk_vcodec_mem_free.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.13, ptr @.str.2, ptr @.str.10, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__kstrtab_mtk_vcodec_mem_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_vcodec_mem_free = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_vcodec_mem_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_vcodec_mem_free to i32), ptr @__kstrtab_mtk_vcodec_mem_free, ptr @__kstrtabns_mtk_vcodec_mem_free }, section "___ksymtab+mtk_vcodec_mem_free", align 4
@__kstrtab_mtk_vcodec_set_curr_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_vcodec_set_curr_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_vcodec_set_curr_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_vcodec_set_curr_ctx to i32), ptr @__kstrtab_mtk_vcodec_set_curr_ctx, ptr @__kstrtabns_mtk_vcodec_set_curr_ctx }, section "___ksymtab+mtk_vcodec_set_curr_ctx", align 4
@__kstrtab_mtk_vcodec_get_curr_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_vcodec_get_curr_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_vcodec_get_curr_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_vcodec_get_curr_ctx to i32), ptr @__kstrtab_mtk_vcodec_get_curr_ctx, ptr @__kstrtabns_mtk_vcodec_get_curr_ctx }, section "___ksymtab+mtk_vcodec_get_curr_ctx", align 4
@__UNIQUE_ID_file304 = internal constant [75 x i8] c"mtk_vcodec_common.file=drivers/media/platform/mtk-vcodec/mtk-vcodec-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [33 x i8] c"mtk_vcodec_common.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [58 x i8] c"mtk_vcodec_common.description=Mediatek video codec driver\00", section ".modinfo", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 19, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 35, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 40, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 41, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 43, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [55 x i8] c"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 57, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__ksymtab_mtk_vcodec_get_curr_ctx, ptr @__ksymtab_mtk_vcodec_get_reg_addr, ptr @__ksymtab_mtk_vcodec_mem_alloc, ptr @__ksymtab_mtk_vcodec_mem_free, ptr @__ksymtab_mtk_vcodec_set_curr_ctx, ptr @mtk_vcodec_get_reg_addr._entry, ptr @mtk_vcodec_get_reg_addr._entry_ptr, ptr @mtk_vcodec_mem_alloc._entry, ptr @mtk_vcodec_mem_alloc._entry_ptr, ptr @mtk_vcodec_mem_free._entry, ptr @mtk_vcodec_mem_free._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_get_reg_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_mem_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_mem_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mtk_vcodec_get_reg_addr(ptr noundef readonly %data, i32 noundef %reg_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %reg_idx)
  %cmp = icmp ugt i32 %reg_idx, 13
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 19, i32 noundef %reg_idx) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr %struct.mtk_vcodec_dev, ptr %1, i32 0, i32 10, i32 %reg_idx
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %3, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_vcodec_mem_alloc(ptr nocapture noundef readonly %data, ptr noundef %mem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem, align 4
  %dev2 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %plat_dev = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %dma_addr = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %mem, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev3, i32 noundef %1, ptr noundef %dma_addr, i32 noundef 3264, i32 noundef 0) #3
  %va = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %mem, i32 0, i32 1
  %6 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %va, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %do.body7

do.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i72 = phi ptr [ %10, %if.end.i ], [ %8, %do.end.dev_name.exit_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 36, ptr noundef %retval.0.i72, i32 noundef %1) #6
  br label %cleanup

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vcodec_mem_alloc.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vcodec_mem_alloc, %if.then13)) #3
          to label %do.body18 [label %if.then13], !srcloc !59

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #5
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %data, i32 0, i32 6
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %13 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %va, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vcodec_mem_alloc.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef 40, i32 noundef %12, ptr noundef %14) #3
  br label %do.body18

do.body18:                                        ; preds = %if.then13, %do.body7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vcodec_mem_alloc.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vcodec_mem_alloc, %if.then30)) #3
          to label %do.body36 [label %if.then30], !srcloc !59

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #5
  %id31 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %data, i32 0, i32 6
  %15 = ptrtoint ptr %id31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id31, align 4
  %17 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vcodec_mem_alloc.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, i32 noundef 42, i32 noundef %16, i32 noundef %18) #3
  br label %do.body36

do.body36:                                        ; preds = %if.then30, %do.body18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vcodec_mem_alloc.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vcodec_mem_alloc, %if.then48)) #3
          to label %cleanup [label %if.then48], !srcloc !59

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #5
  %id49 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %data, i32 0, i32 6
  %19 = ptrtoint ptr %id49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id49, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vcodec_mem_alloc.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.4, i32 noundef 43, i32 noundef %20, i32 noundef %1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %do.body36, %dev_name.exit
  %retval.0 = phi i32 [ -12, %dev_name.exit ], [ 0, %if.then48 ], [ 0, %do.body36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vcodec_mem_free(ptr nocapture noundef readonly %data, ptr nocapture noundef %mem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem, align 4
  %dev2 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %plat_dev = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %va = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %mem, i32 0, i32 1
  %6 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %va, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %do.body5

do.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i77 = phi ptr [ %11, %if.end.i ], [ %9, %do.end.dev_name.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 58, ptr noundef %retval.0.i77, i32 noundef %1) #6
  br label %cleanup

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vcodec_mem_free.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vcodec_mem_free, %if.then11)) #3
          to label %do.body16 [label %if.then11], !srcloc !59

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  %id = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %data, i32 0, i32 6
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %14 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vcodec_mem_free.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13, i32 noundef 62, i32 noundef %13, ptr noundef %15) #3
  br label %do.body16

do.body16:                                        ; preds = %if.then11, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vcodec_mem_free.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vcodec_mem_free, %if.then28)) #3
          to label %do.body33 [label %if.then28], !srcloc !59

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  %id29 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %data, i32 0, i32 6
  %16 = ptrtoint ptr %id29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id29, align 4
  %dma_addr = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %mem, i32 0, i32 2
  %18 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vcodec_mem_free.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef 64, i32 noundef %17, i32 noundef %19) #3
  br label %do.body33

do.body33:                                        ; preds = %if.then28, %do.body16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_vcodec_mem_free.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_vcodec_mem_free, %if.then45)) #3
          to label %do.end49 [label %if.then45], !srcloc !59

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #5
  %id46 = getelementptr inbounds %struct.mtk_vcodec_ctx, ptr %data, i32 0, i32 6
  %20 = ptrtoint ptr %id46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id46, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_vcodec_mem_free.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13, i32 noundef 65, i32 noundef %21, i32 noundef %1) #3
  br label %do.end49

do.end49:                                         ; preds = %if.then45, %do.body33
  %22 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %va, align 4
  %dma_addr51 = getelementptr inbounds %struct.mtk_vcodec_mem, ptr %mem, i32 0, i32 2
  %24 = ptrtoint ptr %dma_addr51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_addr51, align 4
  tail call void @dma_free_attrs(ptr noundef %dev3, i32 noundef %1, ptr noundef %23, i32 noundef %25, i32 noundef 0) #3
  %26 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va, align 4
  %27 = ptrtoint ptr %dma_addr51 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %dma_addr51, align 4
  %28 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %mem, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %dev_name.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vcodec_set_curr_ctx(ptr noundef %dev, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %dev, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #3
  %curr_ctx = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %curr_ctx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mtk_vcodec_get_curr_ctx(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %dev, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #3
  %curr_ctx = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr_ctx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call2) #3
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 19, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mtk_vcodec_get_reg_addr._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mtk_vcodec_get_reg_addr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_mtk_vcodec_get_reg_addr, !7, !"__ksymtab_mtk_vcodec_get_reg_addr", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 24, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 35, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mtk_vcodec_mem_alloc._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mtk_vcodec_mem_alloc._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 40, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mtk_vcodec_mem_alloc.__UNIQUE_ID_ddebug298, !14, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!17 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 41, i32 2}
!20 = !{ptr @mtk_vcodec_mem_alloc.__UNIQUE_ID_ddebug299, !19, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 43, i32 2}
!24 = !{ptr @mtk_vcodec_mem_alloc.__UNIQUE_ID_ddebug300, !23, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__ksymtab_mtk_vcodec_mem_alloc, !27, !"__ksymtab_mtk_vcodec_mem_alloc", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 47, i32 1}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 57, i32 3}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mtk_vcodec_mem_free._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @mtk_vcodec_mem_free._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @mtk_vcodec_mem_free.__UNIQUE_ID_ddebug301, !34, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 62, i32 2}
!35 = !{ptr @mtk_vcodec_mem_free.__UNIQUE_ID_ddebug302, !36, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 63, i32 2}
!37 = !{ptr @mtk_vcodec_mem_free.__UNIQUE_ID_ddebug303, !38, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 65, i32 2}
!39 = !{ptr @__ksymtab_mtk_vcodec_mem_free, !40, !"__ksymtab_mtk_vcodec_mem_free", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 72, i32 1}
!41 = !{ptr @__ksymtab_mtk_vcodec_set_curr_ctx, !42, !"__ksymtab_mtk_vcodec_set_curr_ctx", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 83, i32 1}
!43 = !{ptr @__ksymtab_mtk_vcodec_get_curr_ctx, !44, !"__ksymtab_mtk_vcodec_get_curr_ctx", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 95, i32 1}
!45 = !{ptr @__UNIQUE_ID_file304, !46, !"__UNIQUE_ID_file304", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 97, i32 1}
!47 = !{ptr @__UNIQUE_ID_license305, !46, !"__UNIQUE_ID_license305", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_description306, !49, !"__UNIQUE_ID_description306", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_util.c", i32 98, i32 1}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148954152, i64 2148954157, i64 2148954170, i64 2148954214, i64 2148954248, i64 2148954269}
