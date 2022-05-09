; ModuleID = '/llk/IR_all_yes/drivers/firmware/imx/imx-dsp.c_pt.bc'
source_filename = "../drivers/firmware/imx/imx-dsp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+imx_dsp_ring_doorbell\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_dsp_ring_doorbell\09\09\09\09"
module asm "\09.long\09__crc_imx_dsp_ring_doorbell\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_dsp_ring_doorbell:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_dsp_ring_doorbell\22\09\09\09\09\09"
module asm "__kstrtabns_imx_dsp_ring_doorbell:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx_dsp_request_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_dsp_request_channel\09\09\09\09"
module asm "\09.long\09__crc_imx_dsp_request_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_dsp_request_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_dsp_request_channel\22\09\09\09\09\09"
module asm "__kstrtabns_imx_dsp_request_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx_dsp_free_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_dsp_free_channel\09\09\09\09"
module asm "\09.long\09__crc_imx_dsp_free_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_dsp_free_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_dsp_free_channel\22\09\09\09\09\09"
module asm "__kstrtabns_imx_dsp_free_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.imx_dsp_chan = type { ptr, %struct.mbox_client, ptr, ptr, i32 }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.imx_dsp_ipc = type { [4 x %struct.imx_dsp_chan], ptr, ptr, ptr }
%struct.imx_dsp_ops = type { ptr, ptr }

@__kstrtab_imx_dsp_ring_doorbell = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_dsp_ring_doorbell = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_dsp_ring_doorbell = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_dsp_ring_doorbell to i32), ptr @__kstrtab_imx_dsp_ring_doorbell, ptr @__kstrtabns_imx_dsp_ring_doorbell }, section "___ksymtab+imx_dsp_ring_doorbell", align 4
@__kstrtab_imx_dsp_request_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_dsp_request_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_dsp_request_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_dsp_request_channel to i32), ptr @__kstrtab_imx_dsp_request_channel, ptr @__kstrtabns_imx_dsp_request_channel }, section "___ksymtab+imx_dsp_request_channel", align 4
@__kstrtab_imx_dsp_free_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_dsp_free_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_dsp_free_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_dsp_free_channel to i32), ptr @__kstrtab_imx_dsp_free_channel, ptr @__kstrtabns_imx_dsp_free_channel }, section "___ksymtab+imx_dsp_free_channel", align 4
@__initcall__kmod_imx_dsp__184_187_imx_dsp_driver_init6 = internal global ptr @imx_dsp_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author185 = internal constant [53 x i8] c"imx_dsp.author=Daniel Baluta <daniel.baluta@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [48 x i8] c"imx_dsp.description=IMX DSP IPC protocol driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [42 x i8] c"imx_dsp.file=drivers/firmware/imx/imx-dsp\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [23 x i8] c"imx_dsp.license=GPL v2\00", section ".modinfo", align 1
@imx_dsp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_dsp_probe, ptr @imx_dsp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-dsp\00", [24 x i8] zeroinitializer }, align 32
@imx_dsp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NXP i.MX DSP IPC initialized\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx_dsp_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/firmware/imx/imx-dsp.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_dsp_probe._entry_ptr = internal global ptr @imx_dsp_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"txdb%d\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rxdb%d\00", [25 x i8] zeroinitializer }, align 32
@imx_dsp_setup_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 121, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to request mbox chan %s ret %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx_dsp_setup_channels\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@imx_dsp_setup_channels._entry_ptr = internal global ptr @imx_dsp_setup_channels._entry, section ".printk_index", align 4
@imx_dsp_setup_channels.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.9, ptr @.str.3, ptr @.str.12, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx_dsp\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request mbox chan %s\0A\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"imx_dsp_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 180, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 182, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 158, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 99, i32 38 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 101, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 120, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [34 x i8] c"../drivers/firmware/imx/imx-dsp.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 125, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__initcall__kmod_imx_dsp__184_187_imx_dsp_driver_init6, ptr @__ksymtab_imx_dsp_free_channel, ptr @__ksymtab_imx_dsp_request_channel, ptr @__ksymtab_imx_dsp_ring_doorbell, ptr @imx_dsp_probe._entry, ptr @imx_dsp_probe._entry_ptr, ptr @imx_dsp_setup_channels._entry, ptr @imx_dsp_setup_channels._entry_ptr, ptr @imx_dsp_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_setup_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_dsp_ring_doorbell(ptr nocapture noundef readonly %ipc, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %idx)
  %cmp = icmp ugt i32 %idx, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ch = getelementptr [4 x %struct.imx_dsp_chan], ptr %ipc, i32 0, i32 %idx, i32 2
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch, align 4
  %call = tail call i32 @mbox_send_message(ptr noundef %1, ptr noundef null) #5
  %2 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_dsp_request_channel(ptr noundef %dsp_ipc, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %idx)
  %cmp = icmp sgt i32 %idx, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cl = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 %idx, i32 1
  %name = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 %idx, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call1 = tail call ptr @mbox_request_channel_byname(ptr noundef %cl, ptr noundef %1) #5
  %ch = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 %idx, i32 2
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %ch, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_dsp_free_channel(ptr nocapture noundef readonly %dsp_ipc, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %idx)
  %cmp = icmp sgt i32 %idx, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ch = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 %idx, i32 2
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch, align 4
  tail call void @mbox_free_channel(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_dsp_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void @device_set_of_node_from_dev(ptr noundef %dev1, ptr noundef %1) #5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 188, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev4 = getelementptr inbounds %struct.imx_dsp_ipc, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev4, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call5 = tail call fastcc i32 @imx_dsp_setup_channels(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ch = getelementptr [4 x %struct.imx_dsp_chan], ptr %1, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch, align 4
  tail call void @mbox_free_channel(ptr noundef %3) #5
  %name = getelementptr [4 x %struct.imx_dsp_chan], ptr %1, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %5) #5
  %ch.1 = getelementptr [4 x %struct.imx_dsp_chan], ptr %1, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %ch.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch.1, align 4
  tail call void @mbox_free_channel(ptr noundef %7) #5
  %name.1 = getelementptr [4 x %struct.imx_dsp_chan], ptr %1, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %name.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.1, align 4
  tail call void @kfree(ptr noundef %9) #5
  %ch.2 = getelementptr [4 x %struct.imx_dsp_chan], ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %ch.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ch.2, align 4
  tail call void @mbox_free_channel(ptr noundef %11) #5
  %name.2 = getelementptr [4 x %struct.imx_dsp_chan], ptr %1, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %name.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.2, align 4
  tail call void @kfree(ptr noundef %13) #5
  %ch.3 = getelementptr [4 x %struct.imx_dsp_chan], ptr %1, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %ch.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ch.3, align 4
  tail call void @mbox_free_channel(ptr noundef %15) #5
  %name.3 = getelementptr [4 x %struct.imx_dsp_chan], ptr %1, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %name.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name.3, align 4
  tail call void @kfree(ptr noundef %17) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_of_node_from_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_dsp_setup_channels(ptr noundef %dsp_ipc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.imx_dsp_ipc, ptr %dsp_ipc, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.078 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.078)
  %cmp2 = icmp ult i32 %i.078, 2
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, i32 noundef %i.078) #5
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add nsw i32 %i.078, -2
  %call3 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, i32 noundef %sub) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %chan_name.0 = phi ptr [ %call, %if.then ], [ %call3, %if.else ]
  %tobool.not = icmp eq ptr %chan_name.0, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arrayidx = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 %i.078
  %name = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 %i.078, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %chan_name.0, ptr %name, align 4
  %cl6 = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 %i.078, i32 1
  %3 = ptrtoint ptr %cl6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %cl6, align 4
  %tx_block = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 %i.078, i32 1, i32 1
  %4 = ptrtoint ptr %tx_block to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %tx_block, align 4
  %knows_txdone = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 %i.078, i32 1, i32 3
  %5 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %knows_txdone, align 4
  %rx_callback = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 %i.078, i32 1, i32 4
  %6 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @imx_dsp_handle_rx, ptr %rx_callback, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dsp_ipc, ptr %arrayidx, align 4
  %rem = and i32 %i.078, 1
  %idx = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 %i.078, i32 4
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rem, ptr %idx, align 4
  %call8 = tail call ptr @mbox_request_channel_byname(ptr noundef %cl6, ptr noundef nonnull %chan_name.0) #5
  %ch = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 %i.078, i32 2
  %9 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %ch, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %do.body18

if.then11:                                        ; preds = %if.end5
  %10 = ptrtoint ptr %call8 to i32
  %cmp14.not = icmp eq ptr %call8, inttoptr (i32 -517 to ptr)
  br i1 %cmp14.not, label %if.then11.out_crit_edge, label %do.end

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %chan_name.0, i32 noundef %10) #8
  br label %out

do.body18:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_dsp_setup_channels.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_dsp_setup_channels, %if.then23)) #5
          to label %for.inc [label %if.then23], !srcloc !50

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_dsp_setup_channels.__UNIQUE_ID_ddebug183, ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %chan_name.0) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %do.body18
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

out:                                              ; preds = %do.end, %if.then11.out_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.078)
  %cmp2879.not = icmp eq i32 %i.078, 0
  br i1 %cmp2879.not, label %out.cleanup_crit_edge, label %for.body29

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body29:                                       ; preds = %out
  %ch32 = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %ch32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ch32, align 4
  tail call void @mbox_free_channel(ptr noundef %12) #5
  %name33 = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 0, i32 3
  %13 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name33, align 4
  tail call void @kfree(ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.078)
  %exitcond84.not = icmp eq i32 %i.078, 1
  br i1 %exitcond84.not, label %for.body29.cleanup_crit_edge, label %for.body29.1

for.body29.cleanup_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body29.1:                                     ; preds = %for.body29
  %ch32.1 = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %ch32.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch32.1, align 4
  tail call void @mbox_free_channel(ptr noundef %16) #5
  %name33.1 = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %name33.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name33.1, align 4
  tail call void @kfree(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.078)
  %exitcond84.not.1 = icmp eq i32 %i.078, 2
  br i1 %exitcond84.not.1, label %for.body29.1.cleanup_crit_edge, label %for.body29.2

for.body29.1.cleanup_crit_edge:                   ; preds = %for.body29.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body29.2:                                     ; preds = %for.body29.1
  call void @__sanitizer_cov_trace_pc() #7
  %ch32.2 = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %ch32.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ch32.2, align 4
  tail call void @mbox_free_channel(ptr noundef %20) #5
  %name33.2 = getelementptr [4 x %struct.imx_dsp_chan], ptr %dsp_ipc, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %name33.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name33.2, align 4
  tail call void @kfree(ptr noundef %22) #5
  br label %cleanup

cleanup:                                          ; preds = %for.body29.2, %for.body29.1.cleanup_crit_edge, %for.body29.cleanup_crit_edge, %out.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %out.cleanup_crit_edge ], [ %10, %for.body29.2 ], [ %10, %for.body29.1.cleanup_crit_edge ], [ %10, %for.body29.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_dsp_handle_rx(ptr nocapture noundef readonly %c, ptr nocapture noundef readnone %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %c, i32 -4
  %idx = getelementptr i8, ptr %c, i32 36
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %ops = getelementptr inbounds %struct.imx_dsp_ipc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %3) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %handle_request = getelementptr inbounds %struct.imx_dsp_ops, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %handle_request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handle_request, align 4
  tail call void %9(ptr noundef %3) #5
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %ch.i = getelementptr [4 x %struct.imx_dsp_chan], ptr %11, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ch.i, align 4
  %call.i = tail call i32 @mbox_send_message(ptr noundef %13, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__ksymtab_imx_dsp_ring_doorbell, !1, !"__ksymtab_imx_dsp_ring_doorbell", i1 false, i1 false}
!1 = !{!"../drivers/firmware/imx/imx-dsp.c", i32 40, i32 1}
!2 = !{ptr @__ksymtab_imx_dsp_request_channel, !3, !"__ksymtab_imx_dsp_request_channel", i1 false, i1 false}
!3 = !{!"../drivers/firmware/imx/imx-dsp.c", i32 74, i32 1}
!4 = !{ptr @__ksymtab_imx_dsp_free_channel, !5, !"__ksymtab_imx_dsp_free_channel", i1 false, i1 false}
!5 = !{!"../drivers/firmware/imx/imx-dsp.c", i32 86, i32 1}
!6 = !{ptr @__initcall__kmod_imx_dsp__184_187_imx_dsp_driver_init6, !7, !"__initcall__kmod_imx_dsp__184_187_imx_dsp_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/firmware/imx/imx-dsp.c", i32 187, i32 1}
!8 = !{ptr @__UNIQUE_ID_author185, !9, !"__UNIQUE_ID_author185", i1 false, i1 false}
!9 = !{!"../drivers/firmware/imx/imx-dsp.c", i32 189, i32 1}
!10 = !{ptr @__UNIQUE_ID_description186, !11, !"__UNIQUE_ID_description186", i1 false, i1 false}
!11 = !{!"../drivers/firmware/imx/imx-dsp.c", i32 190, i32 1}
!12 = !{ptr @__UNIQUE_ID_file187, !13, !"__UNIQUE_ID_file187", i1 false, i1 false}
!13 = !{!"../drivers/firmware/imx/imx-dsp.c", i32 191, i32 1}
!14 = !{ptr @__UNIQUE_ID_license188, !13, !"__UNIQUE_ID_license188", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/firmware/imx/imx-dsp.c", i32 182, i32 11}
!17 = !{ptr @imx_dsp_driver, !18, !"imx_dsp_driver", i1 false, i1 false}
!18 = !{!"../drivers/firmware/imx/imx-dsp.c", i32 180, i32 31}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/firmware/imx/imx-dsp.c", i32 158, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @imx_dsp_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @imx_dsp_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/firmware/imx/imx-dsp.c", i32 99, i32 38}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/firmware/imx/imx-dsp.c", i32 101, i32 38}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/firmware/imx/imx-dsp.c", i32 120, i32 5}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @imx_dsp_setup_channels._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @imx_dsp_setup_channels._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/firmware/imx/imx-dsp.c", i32 125, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @imx_dsp_setup_channels.__UNIQUE_ID_ddebug183, !38, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2148281338, i64 2148281343, i64 2148281356, i64 2148281400, i64 2148281434, i64 2148281455}
