; ModuleID = '/llk/IR_all_yes/drivers/scsi/esas2r/esas2r_flash.c_pt.bc'
source_filename = "../drivers/scsi/esas2r/esas2r_flash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.esas2r_sas_nvram = type { [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, [16 x i8], i8, i8, i8, [161 x i8] }
%struct.esas2r_ioctl_fs = type { i8, i8, i8, i8, i8, [11 x i8], %struct.esas2r_ioctlfs_command, [1 x i8] }
%struct.esas2r_ioctlfs_command = type { i8, i8, [2 x i8], i32, i32, i32 }
%struct.esas2r_adapter = type { [256 x %struct.esas2r_target], ptr, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %union.anon.101, i32, i64, ptr, ptr, %struct.esas2r_request, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i16, i16, %struct.esas2r_mem_desc, %struct.esas2r_mem_desc, %struct.esas2r_disc_context, ptr, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], %struct.esas2r_flash_context, i32, i32, %struct.tasklet_struct, ptr, ptr, i32, [32 x i8], %struct.timer_list, %struct.esas2r_firmware, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, ptr, i64, %struct.wait_queue_head, i32, i64, ptr, i32, %struct.wait_queue_head, i32, i32, ptr, %struct.list_head, %struct.spinlock, i8, [20 x i8], i32, %struct.esas2r_sg_context, ptr, %struct.list_head, ptr, i32, %struct.mutex, %struct.mutex, %struct.semaphore, ptr, [524288 x i8], i8 }
%struct.esas2r_target = type { i8, i8, i8, i8, i32, i32, i32, i16, i16, i8, i64, [60 x i8], %struct.atto_vda_ae_lu }
%struct.atto_vda_ae_lu = type { %struct.atto_vda_ae_hdr, i32, i8, i8, i16, %union.anon }
%struct.atto_vda_ae_hdr = type { i8, i8, i8, i8 }
%union.anon = type { %struct.atto_vda_ae_lu_tgt_lun_raid }
%struct.atto_vda_ae_lu_tgt_lun_raid = type { i16, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%union.anon.101 = type { i32 }
%struct.esas2r_request = type { %struct.list_head, %struct.list_head, ptr, ptr, %union.anon.15, ptr, %struct.list_head, ptr, i32, i16, i8, i8, %union.atto_vda_func_rsp, ptr, ptr, ptr, i8, i8, i16, i64, ptr, ptr, i32, i32, %union.anon.23 }
%union.anon.15 = type { ptr }
%union.atto_vda_func_rsp = type { %struct.atto_vda_scsi_rsp }
%struct.atto_vda_scsi_rsp = type { i8, i8, [2 x i8], i32 }
%union.anon.23 = type { ptr }
%struct.esas2r_mem_desc = type { %struct.list_head, ptr, i64, ptr, ptr, i32, i32 }
%struct.esas2r_disc_context = type { i8, i8, i16, i32, i32, i16, i8, i8, [16 x i8], ptr, i16, i16, i8, i8, i64 }
%struct.esas2r_flash_context = type { ptr, ptr, ptr, ptr, i32, i8, i8, i16, i32, i32, i32, i8, %struct.esas2r_sg_context }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.105, i32 }
%union.anon.105 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.esas2r_firmware = type { i32, %struct.esas2r_flash_img, ptr, i64, i32, ptr, i64 }
%struct.esas2r_flash_img = type { i8, i8, i8, i8, i32, i16, i16, i16, i16, [16 x i8], [6 x %struct.esas2r_component_header], [2048 x i8] }
%struct.esas2r_component_header = type { i8, i8, [2 x i8], i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.esas2r_sg_context = type { ptr, ptr, i32, ptr, ptr, %union.anon.102, ptr, ptr, i32, i32 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.106, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.106 = type { ptr }
%struct.atto_vda_flash_req = type { i32, i8, i8, i8, i8, i32, i32, i8, [3 x i8], %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { [16 x i8], [1 x %struct.atto_vda_sge] }
%struct.atto_vda_sge = type <{ i32, i64 }>
%struct.atto_vda_scsi_req = type { i32, i8, i8, i8, i8, i32, i32, [16 x i8], %union.anon.3, %union.anon.5 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type <{ i64, i16, i8, i8 }>
%union.anon.5 = type { [245 x i32] }
%struct.esas2r_boot_image = type { i16, [22 x i8], i16, i16 }
%struct.esas2r_boot_header = type { [4 x i8], i16, i16, i16, i16, i8, [3 x i8], i16, i16, i8, i8, [2 x i8] }
%struct.esas2r_efi_image = type { i16, i16, i32, i16, i16, i16, [8 x i8], i16, i16, i16, %struct.esas2r_boot_header }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.esas2r_pc_image = type <{ i16, i8, [3 x i8], i8, i16, i16, i8, [12 x i8], i16, i16, %struct.esas2r_boot_header }>

@cmd_to_fls_func = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\01\00\02\03\04", [26 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"not found\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%02d/%02d/%04d\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BIOS\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EFI 32-bit\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EFI itanium\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EFI 64-bit\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no boot images\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@default_sas_nvram = internal constant { %struct.esas2r_sas_nvram, [64 x i8] } { %struct.esas2r_sas_nvram { [4 x i8] c"ESAS", i8 0, i8 0, i8 31, i8 -8, i8 1, i8 81, i8 0, i8 0, i8 3, i8 1, i8 0, i8 0, [8 x i8] c"P\01\08`\00\00\00\00", [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, i8 0, i8 3, i8 3, i8 0, [16 x i8] zeroinitializer, i8 0, i8 0, i8 0, [161 x i8] zeroinitializer }, [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 16, i64 73, i64 102, i64 103, i64 104]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 170, i64 682]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 16, i64 332, i64 512, i64 3772, i64 34404]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 254]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [7 x i64] [i64 5, i64 16, i64 44, i64 73, i64 102, i64 103, i64 104]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 16, i64 170, i64 682, i64 1194]
@__sancov_gen_cov_switch_values.20 = internal global [7 x i64] [i64 5, i64 16, i64 44, i64 73, i64 102, i64 103, i64 104]
@__sancov_gen_cov_switch_values.21 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"cmd_to_fls_func\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 88, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1091, i32 24 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1096, i32 24 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1134, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1148, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1152, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1156, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1181, i32 24 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"default_sas_nvram\00", align 1
@___asan_gen_.48 = private constant [38 x i8] c"../drivers/scsi/esas2r/esas2r_flash.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 57, i32 32 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @cmd_to_fls_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @default_sas_nvram], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_to_fls_func to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_sas_nvram to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_process_fs_ioctl(ptr noundef %a, ptr noundef %fs, ptr noundef %rq, ptr noundef %sgc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %fs, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %status, align 1
  %driver_error = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %fs, i32 0, i32 2
  %1 = ptrtoint ptr %driver_error to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -2, ptr %driver_error, align 2
  %2 = ptrtoint ptr %fs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %status, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %command = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %fs, i32 0, i32 6
  %5 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %command, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %cmp6 = icmp ugt i8 %6, 5
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %status, align 1
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %conv4 = zext i8 %6 to i32
  %arrayidx = getelementptr [6 x i8], ptr @cmd_to_fls_func, i32 0, i32 %conv4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.then22 [
    i8 0, label %if.then15
    i8 5, label %if.end10.if.end70_crit_edge
  ]

if.end10.if.end70_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %status, align 1
  br label %cleanup

if.then22:                                        ; preds = %if.end10
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %12 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcid, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %15, label %if.then22.if.then61_crit_edge [
    i16 73, label %lor.lhs.false
    i16 102, label %lor.lhs.false34
    i16 103, label %lor.lhs.false45
    i16 104, label %lor.lhs.false56
  ]

if.then22.if.then61_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then61

lor.lhs.false:                                    ; preds = %if.then22
  %adap_type = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %fs, i32 0, i32 3
  %17 = ptrtoint ptr %adap_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %adap_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp27.not = icmp eq i8 %18, 3
  br i1 %cmp27.not, label %lor.lhs.false.if.end63_crit_edge, label %lor.lhs.false.if.then61_crit_edge

lor.lhs.false.if.then61_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then61

lor.lhs.false.if.end63_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

lor.lhs.false34:                                  ; preds = %if.then22
  %adap_type35 = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %fs, i32 0, i32 3
  %19 = ptrtoint ptr %adap_type35 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %adap_type35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp37.not = icmp eq i8 %20, 4
  br i1 %cmp37.not, label %lor.lhs.false34.if.end63_crit_edge, label %lor.lhs.false34.if.then61_crit_edge

lor.lhs.false34.if.then61_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then61

lor.lhs.false34.if.end63_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

lor.lhs.false45:                                  ; preds = %if.then22
  %adap_type46 = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %fs, i32 0, i32 3
  %21 = ptrtoint ptr %adap_type46 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %adap_type46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %22)
  %cmp48.not = icmp eq i8 %22, 5
  br i1 %cmp48.not, label %lor.lhs.false45.if.end63_crit_edge, label %lor.lhs.false45.if.then61_crit_edge

lor.lhs.false45.if.then61_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then61

lor.lhs.false45.if.end63_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

lor.lhs.false56:                                  ; preds = %if.then22
  %adap_type57 = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %fs, i32 0, i32 3
  %23 = ptrtoint ptr %adap_type57 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %adap_type57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %24)
  %cmp59.not = icmp eq i8 %24, 6
  br i1 %cmp59.not, label %lor.lhs.false56.if.end63_crit_edge, label %lor.lhs.false56.if.then61_crit_edge

lor.lhs.false56.if.then61_crit_edge:              ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then61

lor.lhs.false56.if.end63_crit_edge:               ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then61:                                        ; preds = %lor.lhs.false56.if.then61_crit_edge, %lor.lhs.false45.if.then61_crit_edge, %lor.lhs.false34.if.then61_crit_edge, %lor.lhs.false.if.then61_crit_edge, %if.then22.if.then61_crit_edge
  %25 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 6, ptr %status, align 1
  br label %cleanup

if.end63:                                         ; preds = %lor.lhs.false56.if.end63_crit_edge, %lor.lhs.false45.if.end63_crit_edge, %lor.lhs.false34.if.end63_crit_edge, %lor.lhs.false.if.end63_crit_edge
  %driver_ver = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %fs, i32 0, i32 4
  %26 = ptrtoint ptr %driver_ver to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %driver_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp65 = icmp ugt i8 %27, 2
  br i1 %cmp65, label %if.then67, label %if.end63.if.end70_crit_edge

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 7, ptr %status, align 1
  br label %cleanup

if.end70:                                         ; preds = %if.end63.if.end70_crit_edge, %if.end10.if.end70_crit_edge
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags, align 4
  %31 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %if.end73, label %if.then71

if.then71:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 11, ptr %status, align 1
  br label %cleanup

if.end73:                                         ; preds = %if.end70
  %interrupt_cb = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 14
  %33 = ptrtoint ptr %interrupt_cb to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @esas2r_complete_fs_ioctl, ptr %interrupt_cb, align 8
  %interrupt_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %34 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %fs, ptr %interrupt_cx, align 4
  %length = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %fs, i32 0, i32 6, i32 4
  %35 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %checksum = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %fs, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %checksum to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %checksum, align 1
  %flash_addr = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %fs, i32 0, i32 6, i32 3
  %40 = ptrtoint ptr %flash_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flash_addr, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void @esas2r_build_flash_req(ptr noundef %a, ptr noundef %rq, i8 noundef zeroext %9, i8 noundef zeroext %39, i32 noundef %42, i32 noundef %37) #11
  %43 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %6, label %if.end73.if.end97_crit_edge [
    i8 3, label %if.end73.if.then81_crit_edge
    i8 1, label %if.end73.if.then81_crit_edge151
    i8 4, label %if.then96
  ]

if.end73.if.then81_crit_edge151:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then81

if.end73.if.then81_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then81

if.end73.if.end97_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then81:                                        ; preds = %if.end73.if.then81_crit_edge, %if.end73.if.then81_crit_edge151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp82 = icmp eq i32 %36, 0
  br i1 %cmp82, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 4, ptr %status, align 1
  br label %cleanup

if.end86:                                         ; preds = %if.then81
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %45 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vrq, align 8
  %data = getelementptr inbounds %struct.atto_vda_flash_req, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %a, ptr %sgc, align 4
  %first_req.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %48 = ptrtoint ptr %first_req.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %rq, ptr %first_req.i, align 4
  %49 = load ptr, ptr %vrq, align 8
  %add.ptr1.i = getelementptr i8, ptr %49, i32 116
  %sge.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %limit.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %50 = ptrtoint ptr %limit.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr1.i, ptr %limit.i, align 4
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %sge.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %data, ptr %sge.i, align 4
  %last.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %52 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %data, ptr %last.i, align 4
  %53 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vrq, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %data to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i8
  br label %esas2r_sgc_init.exit

if.else.i:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vrq, align 8
  %u.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %sge.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %u.i, ptr %sge.i, align 4
  %last10.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %58 = ptrtoint ptr %last10.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %u.i, ptr %last10.i, align 4
  %59 = load ptr, ptr %vrq, align 8
  br label %esas2r_sgc_init.exit

esas2r_sgc_init.exit:                             ; preds = %if.else.i, %if.then.i
  %.sink28.i = phi ptr [ %59, %if.else.i ], [ %54, %if.then.i ]
  %.sink.i = phi i8 [ 44, %if.else.i ], [ %conv.i, %if.then.i ]
  %sg_list_offset12.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %.sink28.i, i32 0, i32 4
  %60 = ptrtoint ptr %sg_list_offset12.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %.sink.i, ptr %sg_list_offset12.i, align 1
  %chain.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %61 = ptrtoint ptr %chain.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %chain.i, align 4
  %length87 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %62 = ptrtoint ptr %length87 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %37, ptr %length87, align 4
  %63 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vrq, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %64, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i = icmp eq i32 %66, 0
  br i1 %cmp.i, label %esas2r_sgc_init.exit.if.end97_crit_edge, label %esas2r_build_sg_list.exit, !prof !29

esas2r_sgc_init.exit.if.end97_crit_edge:          ; preds = %esas2r_sgc_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

esas2r_build_sg_list.exit:                        ; preds = %esas2r_sgc_init.exit
  %build_sgl.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %67 = ptrtoint ptr %build_sgl.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %build_sgl.i, align 8
  %call.i = tail call zeroext i1 %68(ptr noundef %a, ptr noundef %sgc) #11
  br i1 %call.i, label %esas2r_build_sg_list.exit.if.end97_crit_edge, label %if.then89

esas2r_build_sg_list.exit.if.end97_crit_edge:     ; preds = %esas2r_build_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then89:                                        ; preds = %esas2r_build_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 3, ptr %status, align 1
  br label %cleanup

if.then96:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @esas2r_disable_heartbeat(ptr noundef %a)
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %esas2r_build_sg_list.exit.if.end97_crit_edge, %esas2r_sgc_init.exit.if.end97_crit_edge, %if.end73.if.end97_crit_edge
  tail call void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.then89, %if.then84, %if.then71, %if.then67, %if.then61, %if.then15, %if.then8, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then8 ], [ false, %if.then15 ], [ false, %if.then61 ], [ false, %if.then67 ], [ false, %if.then71 ], [ false, %if.then84 ], [ true, %if.end97 ], [ false, %if.then89 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esas2r_complete_fs_ioctl(ptr noundef %a, ptr nocapture noundef readonly %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %0 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_cx, align 4
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %2 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vrq, align 8
  %sub_func = getelementptr inbounds %struct.atto_vda_flash_req, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sub_func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sub_func, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp eq i8 %5, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.if.else.i_crit_edge

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.i = icmp eq i32 %11, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %nvram.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %12 = ptrtoint ptr %nvram.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nvram.i, align 4
  %options2.i = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %options2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %options2.i, align 1
  %16 = and i8 %15, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not.i = icmp eq i8 %16, 0
  br i1 %tobool5.not.i, label %land.lhs.true4.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true4.i.if.else.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags.i) #11
  br label %if.end

if.else.i:                                        ; preds = %land.lhs.true4.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags.i) #11
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %entry.if.end_crit_edge
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %17 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %req_stat, align 1
  %driver_error = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %driver_error to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %driver_error, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp4 = icmp ne i8 %18, 0
  %spec.select = zext i1 %cmp4 to i8
  %20 = getelementptr inbounds %struct.esas2r_ioctl_fs, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.select, ptr %20, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_build_flash_req(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esas2r_disable_heartbeat(ptr noundef %a) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_start_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_read_flash_block(ptr noundef %a, ptr nocapture noundef writeonly %to, i32 noundef %from, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @esas2r_flash_access(ptr noundef %a, i32 noundef 32)
  br i1 %call, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not40 = icmp eq i32 %size, 0
  br i1 %tobool.not40, label %while.cond.preheader.while.end19_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end19_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end19

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %flags2 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %data_window = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 3
  br label %while.body

while.cond.loopexit:                              ; preds = %while.body16.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %end.1.lcssa = phi ptr [ %end.041, %while.body.while.cond.loopexit_crit_edge ], [ %incdec.ptr, %while.body16.while.cond.loopexit_crit_edge ]
  %tobool.not = icmp eq i32 %sub13, 0
  br i1 %tobool.not, label %while.cond.loopexit.while.end19_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.loopexit.while.end19_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end19

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %from.addr.043 = phi i32 [ %from, %while.body.lr.ph ], [ %add12, %while.cond.loopexit.while.body_crit_edge ]
  %size.addr.042 = phi i32 [ %size, %while.body.lr.ph ], [ %sub13, %while.cond.loopexit.while.body_crit_edge ]
  %end.041 = phi ptr [ %to, %while.body.lr.ph ], [ %end.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags2, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  %iatvr.0.in.v = select i1 %tobool2.not, i32 -67108864, i32 -335544320
  %iatvr.0.in = add i32 %iatvr.0.in.v, %from.addr.043
  %iatvr.0 = and i32 %iatvr.0.in, -131072
  %call7 = tail call i32 @esas2r_map_data_window(ptr noundef %a, i32 noundef %iatvr.0) #11
  %and8 = and i32 %from.addr.043, 131071
  %sub = sub nuw nsw i32 131072, %and8
  %2 = tail call i32 @llvm.umin.i32(i32 %size.addr.042, i32 %sub)
  %add12 = add i32 %2, %from.addr.043
  %sub13 = sub i32 %size.addr.042, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool15.not36 = icmp eq i32 %2, 0
  br i1 %tobool15.not36, label %while.body.while.cond.loopexit_crit_edge, label %while.body.while.body16_crit_edge

while.body.while.body16_crit_edge:                ; preds = %while.body
  br label %while.body16

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit

while.body16:                                     ; preds = %while.body16.while.body16_crit_edge, %while.body.while.body16_crit_edge
  %end.139 = phi ptr [ %incdec.ptr, %while.body16.while.body16_crit_edge ], [ %end.041, %while.body.while.body16_crit_edge ]
  %offset.038 = phi i32 [ %inc, %while.body16.while.body16_crit_edge ], [ %and8, %while.body.while.body16_crit_edge ]
  %len.137 = phi i32 [ %dec, %while.body16.while.body16_crit_edge ], [ %2, %while.body.while.body16_crit_edge ]
  %dec = add nsw i32 %len.137, -1
  %3 = ptrtoint ptr %data_window to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_window, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 %offset.038
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #11, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !31
  %incdec.ptr = getelementptr i8, ptr %end.139, i32 1
  %6 = ptrtoint ptr %end.139 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %end.139, align 1
  %inc = add nuw nsw i32 %offset.038, 1
  %tobool15.not = icmp eq i32 %dec, 0
  br i1 %tobool15.not, label %while.body16.while.cond.loopexit_crit_edge, label %while.body16.while.body16_crit_edge

while.body16.while.body16_crit_edge:              ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body16

while.body16.while.cond.loopexit_crit_edge:       ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit

while.end19:                                      ; preds = %while.cond.loopexit.while.end19_crit_edge, %while.cond.preheader.while.end19_crit_edge
  %call20 = tail call fastcc zeroext i1 @esas2r_flash_access(ptr noundef %a, i32 noundef 64)
  br label %cleanup

cleanup:                                          ; preds = %while.end19, %entry.cleanup_crit_edge
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @esas2r_flash_access(ptr noundef %a, i32 noundef %function) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %function)
  %cmp = icmp eq i32 %function, 32
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  %dis_ints_cnt.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i, ptr %dis_ints_cnt.i, i32 1, ptr elementtype(i32) %dis_ints_cnt.i) #11, !srcloc !33
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i, label %do.body.i, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !35
  tail call void @arm_heavy_mb() #11
  %regs.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !36
  br label %do.body

do.body:                                          ; preds = %do.body.i, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !37
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %function)
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 66656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #11, !srcloc !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %6) #11
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.end7_crit_edge

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  %spec.select = select i1 %tobool5.not, i32 5000, i32 40000
  br label %if.end7

if.end7:                                          ; preds = %lor.lhs.false, %do.body.if.end7_crit_edge
  %timeout.0 = phi i32 [ 40000, %do.body.if.end7_crit_edge ], [ %spec.select, %lor.lhs.false ]
  br label %while.cond

while.cond:                                       ; preds = %if.end33.while.cond_crit_edge, %if.end7
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 66048
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !39
  %16 = and i32 %15, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %while.cond.if.end33_crit_edge, label %if.then14

while.cond.if.end33_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then14:                                        ; preds = %while.cond
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %18, i32 66688
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #11, !srcloc !38
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !41
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr27 = getelementptr i8, ptr %22, i32 66688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %19) #11, !srcloc !36
  %and29 = and i32 %20, %function
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then14.if.end33_crit_edge, label %while.end

if.then14.if.end33_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end33:                                         ; preds = %if.then14.if.end33_crit_edge, %while.cond.if.end33_crit_edge
  %call35 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %call36 = tail call i32 @jiffies_to_msecs(i32 noundef %23) #11
  %sub = sub i32 %call36, %call
  %cmp37 = icmp ugt i32 %sub, %timeout.0
  br i1 %cmp37, label %if.then38, label %if.end33.while.cond_crit_edge

if.end33.while.cond_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then38:                                        ; preds = %if.end33
  br i1 %cmp, label %do.body41, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body41:                                        ; preds = %if.then38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !42
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr45 = getelementptr i8, ptr %25, i32 66656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 1073741824) #11, !srcloc !36
  %dis_ints_cnt.i72 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 7
  %call.i.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i72, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i72, i32 1, i32 3, i32 1) #11
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i72, ptr %dis_ints_cnt.i72, i32 1, ptr elementtype(i32) %dis_ints_cnt.i72) #11, !srcloc !44
  %asmresult.i.i.i.i.i74 = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i74)
  %cmp.i75 = icmp eq i32 %asmresult.i.i.i.i.i74, 0
  br i1 %cmp.i75, label %do.body.i78, label %do.body41.cleanup_crit_edge

do.body41.cleanup_crit_edge:                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.i78:                                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !46
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr.i77 = getelementptr i8, ptr %28, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 269484032) #11, !srcloc !36
  br label %cleanup

while.end:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %function)
  %cmp50 = icmp eq i32 %function, 64
  br i1 %cmp50, label %if.then51, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then51:                                        ; preds = %while.end
  %dis_ints_cnt.i79 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 7
  %call.i.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dis_ints_cnt.i79, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %dis_ints_cnt.i79, i32 1, i32 3, i32 1) #11
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dis_ints_cnt.i79, ptr %dis_ints_cnt.i79, i32 1, ptr elementtype(i32) %dis_ints_cnt.i79) #11, !srcloc !44
  %asmresult.i.i.i.i.i81 = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i81)
  %cmp.i82 = icmp eq i32 %asmresult.i.i.i.i.i81, 0
  br i1 %cmp.i82, label %do.body.i85, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.i85:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !46
  tail call void @arm_heavy_mb() #11
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr.i84 = getelementptr i8, ptr %31, i32 66060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 269484032) #11, !srcloc !36
  br label %cleanup

cleanup:                                          ; preds = %do.body.i85, %if.then51.cleanup_crit_edge, %while.end.cleanup_crit_edge, %do.body.i78, %do.body41.cleanup_crit_edge, %if.then38.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then38.cleanup_crit_edge ], [ true, %while.end.cleanup_crit_edge ], [ false, %do.body41.cleanup_crit_edge ], [ false, %do.body.i78 ], [ true, %if.then51.cleanup_crit_edge ], [ true, %do.body.i85 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_map_data_window(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_read_flash_rev(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  %bytes = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %bytes) #11
  %0 = call ptr @memset(ptr %bytes, i32 255, i32 256)
  %add.ptr = getelementptr inbounds i8, ptr %bytes, i32 256
  %add.ptr2 = getelementptr inbounds i16, ptr %bytes, i32 2
  %call.i = tail call fastcc zeroext i1 @esas2r_flash_access(ptr noundef %a, i32 noundef 32) #11
  br i1 %call.i, label %while.body16.i.preheader, label %entry.invalid_rev_crit_edge

entry.invalid_rev_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_rev

while.body16.i.preheader:                         ; preds = %entry
  %flags2.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %data_window.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 3
  %1 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags2.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i, 0
  %iatvr.0.in.i = select i1 %tobool2.not.i, i32 -59113472, i32 -327548928
  %call7.i = tail call i32 @esas2r_map_data_window(ptr noundef %a, i32 noundef %iatvr.0.in.i) #11
  br label %while.body16.i

while.body16.i:                                   ; preds = %while.body16.i.while.body16.i_crit_edge, %while.body16.i.preheader
  %end.139.i = phi ptr [ %incdec.ptr.i, %while.body16.i.while.body16.i_crit_edge ], [ %bytes, %while.body16.i.preheader ]
  %offset.038.i = phi i32 [ %inc.i, %while.body16.i.while.body16.i_crit_edge ], [ 130816, %while.body16.i.preheader ]
  %len.137.i = phi i32 [ %dec.i, %while.body16.i.while.body16.i_crit_edge ], [ 256, %while.body16.i.preheader ]
  %dec.i = add nsw i32 %len.137.i, -1
  %3 = ptrtoint ptr %data_window.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_window.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 %offset.038.i
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !31
  %incdec.ptr.i = getelementptr i8, ptr %end.139.i, i32 1
  %6 = ptrtoint ptr %end.139.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %end.139.i, align 1
  %inc.i = add nuw nsw i32 %offset.038.i, 1
  %tobool15.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool15.not.i, label %while.body.preheader, label %while.body16.i.while.body16.i_crit_edge

while.body16.i.while.body16.i_crit_edge:          ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body16.i

while.body.preheader:                             ; preds = %while.body16.i
  %call20.i = tail call fastcc zeroext i1 @esas2r_flash_access(ptr noundef %a, i32 noundef 64) #11
  br label %while.body

while.body:                                       ; preds = %if.then15.while.body_crit_edge, %while.body.preheader
  %pw.037 = phi ptr [ %add.ptr5, %if.then15.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %incdec.ptr = getelementptr i16, ptr %pw.037, i32 -1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %incdec.ptr, align 2
  %incdec.ptr4 = getelementptr i16, ptr %pw.037, i32 -2
  %9 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %incdec.ptr4, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %10)
  %12 = lshr i16 %11, 1
  %div = zext i16 %12 to i32
  %idx.neg = sub nsw i32 0, %div
  %add.ptr5 = getelementptr i16, ptr %incdec.ptr4, i32 %idx.neg
  %13 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %8, label %lor.lhs.false12 [
    i16 170, label %while.body.if.then15_crit_edge
    i16 682, label %while.body.if.then15_crit_edge48
  ]

while.body.if.then15_crit_edge48:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

while.body.if.then15_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

lor.lhs.false12:                                  ; preds = %while.body
  %cmp13 = icmp ult ptr %add.ptr5, %add.ptr2
  br i1 %cmp13, label %lor.lhs.false12.if.then15_crit_edge, label %if.end16

lor.lhs.false12.if.then15_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false12.if.then15_crit_edge, %while.body.if.then15_crit_edge, %while.body.if.then15_crit_edge48
  %cmp.not = icmp ult ptr %add.ptr5, %add.ptr2
  br i1 %cmp.not, label %if.then15.invalid_rev_crit_edge, label %if.then15.while.body_crit_edge

if.then15.while.body_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.then15.invalid_rev_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_rev

if.end16:                                         ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_const_cmp2(i16 1194, i16 %8)
  %cmp18 = icmp eq i16 %8, 1194
  br i1 %cmp18, label %if.then20, label %if.end16.invalid_rev_crit_edge

if.end16.invalid_rev_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_rev

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr5, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %flash_ver = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 47
  %17 = ptrtoint ptr %flash_ver to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %flash_ver, align 4
  br label %invalid_rev

invalid_rev:                                      ; preds = %if.then20, %if.end16.invalid_rev_crit_edge, %if.then15.invalid_rev_crit_edge, %entry.invalid_rev_crit_edge
  %flash_ver.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 47
  %18 = ptrtoint ptr %flash_ver.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flash_ver.i, align 4
  %shr.i = lshr i32 %19, 16
  %conv10.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10.i)
  %cmp.i = icmp eq i32 %conv10.i, 0
  br i1 %cmp.i, label %invalid_rev.if.then.i_crit_edge, label %lor.lhs.false.i

invalid_rev.if.then.i_crit_edge:                  ; preds = %invalid_rev
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %invalid_rev
  %20 = lshr i32 %19, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %19)
  %cmp13.i = icmp ult i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %conv10.i)
  %cmp17.i = icmp ugt i32 %conv10.i, 31
  %or.cond.i = select i1 %cmp13.i, i1 true, i1 %cmp17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 218103807, i32 %19)
  %cmp21.i = icmp ugt i32 %19, 218103807
  %or.cond51.i = or i1 %cmp21.i, %or.cond.i
  br i1 %or.cond51.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false23.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false23.i:                                ; preds = %lor.lhs.false.i
  %conv24.i = and i32 %19, 65535
  %21 = add nsw i32 %conv24.i, -10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7994, i32 %21)
  %22 = icmp ult i32 %21, -7994
  br i1 %22, label %lor.lhs.false23.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false23.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false23.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %invalid_rev.if.then.i_crit_edge
  %flash_rev.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 48
  %23 = call ptr @memcpy(ptr %flash_rev.i, ptr @.str, i32 10)
  %24 = ptrtoint ptr %flash_ver.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %flash_ver.i, align 4
  br label %esas2r_print_flash_rev.exit

if.end.i:                                         ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #13
  %flash_rev32.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 48
  %call37.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %flash_rev32.i, ptr noundef nonnull @.str.1, i32 noundef %20, i32 noundef %conv10.i, i32 noundef %conv24.i) #11
  br label %esas2r_print_flash_rev.exit

esas2r_print_flash_rev.exit:                      ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i1 [ false, %if.then.i ], [ true, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %bytes) #11
  ret i1 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_print_flash_rev(ptr nocapture noundef %a) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flash_ver = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 47
  %0 = ptrtoint ptr %flash_ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash_ver, align 4
  %shr = lshr i32 %1, 16
  %conv10 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10)
  %cmp = icmp eq i32 %conv10, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = lshr i32 %1, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %1)
  %cmp13 = icmp ult i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %conv10)
  %cmp17 = icmp ugt i32 %conv10, 31
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp17
  call void @__sanitizer_cov_trace_const_cmp4(i32 218103807, i32 %1)
  %cmp21 = icmp ugt i32 %1, 218103807
  %or.cond51 = or i1 %cmp21, %or.cond
  br i1 %or.cond51, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false23

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %conv24 = and i32 %1, 65535
  %3 = add nsw i32 %conv24, -10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7994, i32 %3)
  %4 = icmp ult i32 %3, -7994
  br i1 %4, label %lor.lhs.false23.if.then_crit_edge, label %if.end

lor.lhs.false23.if.then_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false23.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %flash_rev = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 48
  %5 = call ptr @memcpy(ptr %flash_rev, ptr @.str, i32 10)
  %6 = ptrtoint ptr %flash_ver to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flash_ver, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #13
  %flash_rev32 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 48
  %call37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %flash_rev32, ptr noundef nonnull @.str.1, i32 noundef %2, i32 noundef %conv10, i32 noundef %conv24)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_read_image_type(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  %bytes = alloca [256 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %bytes) #11
  %0 = call ptr @memset(ptr %bytes, i32 255, i32 256)
  %flags2.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %data_window.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 3
  %header_offset = getelementptr inbounds %struct.esas2r_boot_image, ptr %bytes, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %lor.lhs.false41.while.cond_crit_edge, %entry
  %offset.0 = phi i32 [ 0, %entry ], [ %add38, %lor.lhs.false41.while.cond_crit_edge ]
  %call.i = tail call fastcc zeroext i1 @esas2r_flash_access(ptr noundef %a, i32 noundef 32) #11
  br i1 %call.i, label %while.cond.preheader.i, label %while.cond.invalid_rev_crit_edge

while.cond.invalid_rev_crit_edge:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_rev

while.cond.preheader.i:                           ; preds = %while.cond
  %add = add nuw nsw i32 %offset.0, 7340032
  br label %while.body.i

while.cond.loopexit.i:                            ; preds = %while.body16.i.while.cond.loopexit.i_crit_edge, %while.body.i.while.cond.loopexit.i_crit_edge
  %end.1.lcssa.i = phi ptr [ %end.041.i, %while.body.i.while.cond.loopexit.i_crit_edge ], [ %incdec.ptr.i, %while.body16.i.while.cond.loopexit.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %sub13.i, 0
  br i1 %tobool.not.i, label %if.end, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %while.cond.preheader.i
  %from.addr.043.i = phi i32 [ %add, %while.cond.preheader.i ], [ %add12.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %size.addr.042.i = phi i32 [ 256, %while.cond.preheader.i ], [ %sub13.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %end.041.i = phi ptr [ %bytes, %while.cond.preheader.i ], [ %end.1.lcssa.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %1 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags2.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i, 0
  %iatvr.0.in.v.i = select i1 %tobool2.not.i, i32 -67108864, i32 -335544320
  %iatvr.0.in.i = add i32 %iatvr.0.in.v.i, %from.addr.043.i
  %iatvr.0.i = and i32 %iatvr.0.in.i, -131072
  %call7.i = tail call i32 @esas2r_map_data_window(ptr noundef %a, i32 noundef %iatvr.0.i) #11
  %and8.i = and i32 %from.addr.043.i, 131071
  %sub.i = sub nuw nsw i32 131072, %and8.i
  %3 = tail call i32 @llvm.umin.i32(i32 %size.addr.042.i, i32 %sub.i) #11
  %add12.i = add i32 %3, %from.addr.043.i
  %sub13.i = sub i32 %size.addr.042.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool15.not36.i = icmp eq i32 %3, 0
  br i1 %tobool15.not36.i, label %while.body.i.while.cond.loopexit.i_crit_edge, label %while.body.i.while.body16.i_crit_edge

while.body.i.while.body16.i_crit_edge:            ; preds = %while.body.i
  br label %while.body16.i

while.body.i.while.cond.loopexit.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit.i

while.body16.i:                                   ; preds = %while.body16.i.while.body16.i_crit_edge, %while.body.i.while.body16.i_crit_edge
  %end.139.i = phi ptr [ %incdec.ptr.i, %while.body16.i.while.body16.i_crit_edge ], [ %end.041.i, %while.body.i.while.body16.i_crit_edge ]
  %offset.038.i = phi i32 [ %inc.i, %while.body16.i.while.body16.i_crit_edge ], [ %and8.i, %while.body.i.while.body16.i_crit_edge ]
  %len.137.i = phi i32 [ %dec.i, %while.body16.i.while.body16.i_crit_edge ], [ %3, %while.body.i.while.body16.i_crit_edge ]
  %dec.i = add nsw i32 %len.137.i, -1
  %4 = ptrtoint ptr %data_window.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_window.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %offset.038.i
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !31
  %incdec.ptr.i = getelementptr i8, ptr %end.139.i, i32 1
  %7 = ptrtoint ptr %end.139.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %end.139.i, align 1
  %inc.i = add nuw nsw i32 %offset.038.i, 1
  %tobool15.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool15.not.i, label %while.body16.i.while.cond.loopexit.i_crit_edge, label %while.body16.i.while.body16.i_crit_edge

while.body16.i.while.body16.i_crit_edge:          ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body16.i

while.body16.i.while.cond.loopexit.i_crit_edge:   ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit.i

if.end:                                           ; preds = %while.cond.loopexit.i
  %call20.i = tail call fastcc zeroext i1 @esas2r_flash_access(ptr noundef %a, i32 noundef 64) #11
  %8 = ptrtoint ptr %header_offset to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %header_offset, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv = zext i16 %10 to i32
  %add.ptr = getelementptr i8, ptr %bytes, i32 %conv
  %11 = ptrtoint ptr %bytes to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bytes, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %12)
  %cmp.not = icmp eq i16 %12, 21930
  br i1 %cmp.not, label %if.end5, label %if.end.invalid_rev_crit_edge

if.end.invalid_rev_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_rev

if.end5:                                          ; preds = %if.end
  %code_type = getelementptr inbounds %struct.esas2r_boot_header, ptr %add.ptr, i32 0, i32 9
  %13 = ptrtoint ptr %code_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %code_type, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %14, label %if.else34 [
    i8 0, label %if.then9
    i8 3, label %if.then16
  ]

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %image_type = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 50
  %16 = call ptr @memcpy(ptr %image_type, ptr @.str.2, i32 5)
  br label %cleanup55

if.then16:                                        ; preds = %if.end5
  %machine_type = getelementptr inbounds %struct.esas2r_efi_image, ptr %bytes, i32 0, i32 4
  %17 = ptrtoint ptr %machine_type to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %machine_type, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %19, label %if.then16.invalid_rev_crit_edge [
    i16 332, label %sw.bb
    i16 512, label %sw.bb22
    i16 -31132, label %sw.bb26
    i16 3772, label %sw.bb30
  ]

if.then16.invalid_rev_crit_edge:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_rev

sw.bb:                                            ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %image_type19 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 50
  %21 = call ptr @memcpy(ptr %image_type19, ptr @.str.3, i32 11)
  br label %cleanup55

sw.bb22:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %image_type23 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 50
  %22 = call ptr @memcpy(ptr %image_type23, ptr @.str.4, i32 12)
  br label %cleanup55

sw.bb26:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %image_type27 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 50
  %23 = call ptr @memcpy(ptr %image_type27, ptr @.str.5, i32 11)
  br label %cleanup55

sw.bb30:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %image_type31 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 50
  %24 = ptrtoint ptr %image_type31 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 4991757639936525056, ptr %image_type31, align 1
  br label %cleanup55

if.else34:                                        ; preds = %if.end5
  %image_length = getelementptr inbounds %struct.esas2r_boot_header, ptr %add.ptr, i32 0, i32 7
  %25 = ptrtoint ptr %image_length to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %image_length, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp36 = icmp eq i16 %26, 0
  br i1 %cmp36, label %if.else34.invalid_rev_crit_edge, label %lor.lhs.false

if.else34.invalid_rev_crit_edge:                  ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_rev

lor.lhs.false:                                    ; preds = %if.else34
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %conv35 = zext i16 %27 to i32
  %mul = shl nuw nsw i32 %conv35, 9
  %add38 = add i32 %mul, %offset.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %add38)
  %cmp39 = icmp ugt i32 %add38, 786432
  br i1 %cmp39, label %lor.lhs.false.invalid_rev_crit_edge, label %lor.lhs.false41

lor.lhs.false.invalid_rev_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_rev

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %indicator = getelementptr inbounds %struct.esas2r_boot_header, ptr %add.ptr, i32 0, i32 10
  %28 = ptrtoint ptr %indicator to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %indicator, align 1
  %cmp43 = icmp eq i8 %29, -128
  br i1 %cmp43, label %lor.lhs.false41.invalid_rev_crit_edge, label %lor.lhs.false41.while.cond_crit_edge

lor.lhs.false41.while.cond_crit_edge:             ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

lor.lhs.false41.invalid_rev_crit_edge:            ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_rev

invalid_rev:                                      ; preds = %lor.lhs.false41.invalid_rev_crit_edge, %lor.lhs.false.invalid_rev_crit_edge, %if.else34.invalid_rev_crit_edge, %if.then16.invalid_rev_crit_edge, %if.end.invalid_rev_crit_edge, %while.cond.invalid_rev_crit_edge
  %image_type52 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 50
  %30 = call ptr @memcpy(ptr %image_type52, ptr @.str.7, i32 15)
  br label %cleanup55

cleanup55:                                        ; preds = %invalid_rev, %sw.bb30, %sw.bb26, %sw.bb22, %sw.bb, %if.then9
  %retval.1 = phi i1 [ false, %invalid_rev ], [ true, %if.then9 ], [ true, %sw.bb30 ], [ true, %sw.bb26 ], [ true, %sw.bb22 ], [ true, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %bytes) #11
  ret i1 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_nvram_read_direct(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nvram_semaphore = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 90
  %call = tail call i32 @down_interruptible(ptr noundef %nvram_semaphore) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nvram = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %0 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvram, align 4
  %call.i = tail call fastcc zeroext i1 @esas2r_flash_access(ptr noundef %a, i32 noundef 32) #11
  br i1 %call.i, label %while.body16.i.preheader, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

while.body16.i.preheader:                         ; preds = %if.end
  %flags2.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %data_window.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 3
  %2 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags2.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i, 0
  %iatvr.0.in.i = select i1 %tobool2.not.i, i32 -58982400, i32 -327417856
  %call7.i = tail call i32 @esas2r_map_data_window(ptr noundef %a, i32 noundef %iatvr.0.in.i) #11
  br label %while.body16.i

while.body16.i:                                   ; preds = %while.body16.i.while.body16.i_crit_edge, %while.body16.i.preheader
  %end.139.i = phi ptr [ %incdec.ptr.i, %while.body16.i.while.body16.i_crit_edge ], [ %1, %while.body16.i.preheader ]
  %offset.038.i = phi i32 [ %inc.i, %while.body16.i.while.body16.i_crit_edge ], [ 0, %while.body16.i.preheader ]
  %len.137.i = phi i32 [ %dec.i, %while.body16.i.while.body16.i_crit_edge ], [ 256, %while.body16.i.preheader ]
  %dec.i = add nsw i32 %len.137.i, -1
  %4 = ptrtoint ptr %data_window.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_window.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %offset.038.i
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !31
  %incdec.ptr.i = getelementptr i8, ptr %end.139.i, i32 1
  %7 = ptrtoint ptr %end.139.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %end.139.i, align 1
  %inc.i = add nuw nsw i32 %offset.038.i, 1
  %tobool15.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool15.not.i, label %if.end4, label %while.body16.i.while.body16.i_crit_edge

while.body16.i.while.body16.i_crit_edge:          ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body16.i

if.end4:                                          ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #13
  %call20.i = tail call fastcc zeroext i1 @esas2r_flash_access(ptr noundef %a, i32 noundef 64) #11
  %call5 = tail call zeroext i1 @esas2r_nvram_validate(ptr noundef %a)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i1 [ %call5, %if.end4 ], [ false, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @up(ptr noundef %nvram_semaphore) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_nvram_validate(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nvram = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %0 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvram, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %3)
  %cmp.not = icmp eq i8 %3, 69
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then32_crit_edge

entry.if.then32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

lor.lhs.false:                                    ; preds = %entry
  %arrayidx3 = getelementptr [4 x i8], ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %5)
  %cmp5.not = icmp eq i8 %5, 83
  br i1 %cmp5.not, label %lor.lhs.false7, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %arrayidx9 = getelementptr [4 x i8], ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %7)
  %cmp11.not = icmp eq i8 %7, 65
  br i1 %cmp11.not, label %lor.lhs.false13, label %lor.lhs.false7.if.then32_crit_edge

lor.lhs.false7.if.then32_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %arrayidx15 = getelementptr [4 x i8], ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %9)
  %cmp17.not = icmp eq i8 %9, 83
  br i1 %cmp17.not, label %lor.lhs.false13.while.body.i_crit_edge, label %lor.lhs.false13.if.then32_crit_edge

lor.lhs.false13.if.then32_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

lor.lhs.false13.while.body.i_crit_edge:           ; preds = %lor.lhs.false13
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %lor.lhs.false13.while.body.i_crit_edge
  %cksum.07.i = phi i8 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 90, %lor.lhs.false13.while.body.i_crit_edge ]
  %len.addr.06.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 256, %lor.lhs.false13.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %len.addr.06.i, -1
  %arrayidx.i = getelementptr i8, ptr %1, i32 %dec.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %add.i = add i8 %11, %cksum.07.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %esas2r_calc_byte_cksum.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

esas2r_calc_byte_cksum.exit:                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i)
  %tobool.not = icmp eq i8 %add.i, 0
  br i1 %tobool.not, label %if.else20, label %esas2r_calc_byte_cksum.exit.if.then32_crit_edge

esas2r_calc_byte_cksum.exit.if.then32_crit_edge:  ; preds = %esas2r_calc_byte_cksum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.else20:                                        ; preds = %esas2r_calc_byte_cksum.exit
  %version = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp22.not = icmp eq i8 %13, 0
  br i1 %cmp22.not, label %if.end27, label %if.else20.if.then32_crit_edge

if.else20.if.then32_crit_edge:                    ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.end27:                                         ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 12, ptr noundef %flags) #11
  br label %if.end33

if.then32:                                        ; preds = %if.else20.if.then32_crit_edge, %esas2r_calc_byte_cksum.exit.if.then32_crit_edge, %lor.lhs.false13.if.then32_crit_edge, %lor.lhs.false7.if.then32_crit_edge, %lor.lhs.false.if.then32_crit_edge, %entry.if.then32_crit_edge
  %14 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nvram, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %16) #11
  %flags.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %flags.i) #11
  %17 = call ptr @memcpy(ptr %15, ptr @default_sas_nvram, i32 256)
  %arrayidx.i43 = getelementptr %struct.esas2r_sas_nvram, ptr %15, i32 0, i32 13, i32 3
  %18 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 111, ptr %arrayidx.i43, align 1
  %conv3.i = lshr i32 %call.i, 8
  %conv4.i = trunc i32 %conv3.i to i8
  %arrayidx6.i = getelementptr %struct.esas2r_sas_nvram, ptr %15, i32 0, i32 13, i32 4
  %19 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv4.i, ptr %arrayidx6.i, align 1
  %conv8.i = trunc i32 %call.i to i8
  %arrayidx10.i = getelementptr %struct.esas2r_sas_nvram, ptr %15, i32 0, i32 13, i32 5
  %20 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv8.i, ptr %arrayidx10.i, align 1
  %pcid.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %21 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcid.i, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %number.i, align 4
  %arrayidx12.i = getelementptr %struct.esas2r_sas_nvram, ptr %15, i32 0, i32 13, i32 6
  %27 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx12.i, align 1
  %28 = load ptr, ptr %pcid.i, align 4
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %devfn.i, align 4
  %conv14.i = trunc i32 %30 to i8
  %arrayidx16.i = getelementptr %struct.esas2r_sas_nvram, ptr %15, i32 0, i32 13, i32 7
  %31 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv14.i, ptr %arrayidx16.i, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end27
  %rslt.0.off046 = phi i1 [ false, %if.then32 ], [ true, %if.end27 ]
  ret i1 %rslt.0.off046
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_nvram_write(ptr noundef %a, ptr noundef %rq, ptr noundef %nvram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vrq1 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %vrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrq1, align 8
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nvram_semaphore = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 90
  %call2 = tail call i32 @down_interruptible(ptr noundef %nvram_semaphore) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp = icmp eq ptr %nvram, null
  br i1 %cmp, label %if.then6, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %nvram7 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %5 = ptrtoint ptr %nvram7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nvram7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end5.if.end8_crit_edge
  %n.0 = phi ptr [ %6, %if.then6 ], [ %nvram, %if.end5.if.end8_crit_edge ]
  %version = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %n.0, i32 0, i32 1
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp9.not = icmp eq i8 %8, 0
  br i1 %cmp9.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @up(ptr noundef %nvram_semaphore) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %sas_addr = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %n.0, i32 0, i32 13
  %9 = ptrtoint ptr %sas_addr to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %sas_addr, align 1
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, -1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 5764897794103967744, i64 %12)
  %13 = icmp eq i64 %12, 5764897794103967744
  br i1 %13, label %lor.lhs.false28, label %if.end13.if.then40_crit_edge

if.end13.if.then40_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

lor.lhs.false28:                                  ; preds = %if.end13
  %sas_address_bytes.sroa.9.0.extract.shift = lshr i64 %10, 32
  %sas_address_bytes.sroa.9.0.extract.trunc = trunc i64 %sas_address_bytes.sroa.9.0.extract.shift to i32
  %and = and i32 %sas_address_bytes.sroa.9.0.extract.trunc, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and)
  %cmp31.not = icmp eq i32 %and, 96
  br i1 %cmp31.not, label %lor.lhs.false33, label %lor.lhs.false28.if.then40_crit_edge

lor.lhs.false28.if.then40_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

lor.lhs.false33:                                  ; preds = %lor.lhs.false28
  %and36 = and i32 %sas_address_bytes.sroa.9.0.extract.trunc, 15
  %or = or i32 %and36, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp38 = icmp eq i32 %or, 0
  br i1 %cmp38, label %lor.lhs.false33.if.then40_crit_edge, label %if.end42

lor.lhs.false33.if.then40_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then40

if.then40:                                        ; preds = %lor.lhs.false33.if.then40_crit_edge, %lor.lhs.false28.if.then40_crit_edge, %if.end13.if.then40_crit_edge
  tail call void @up(ptr noundef %nvram_semaphore) #11
  br label %cleanup

if.end42:                                         ; preds = %lor.lhs.false33
  %spin_up_delay = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %n.0, i32 0, i32 11
  %14 = ptrtoint ptr %spin_up_delay to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %spin_up_delay, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %15)
  %cmp44 = icmp ugt i8 %15, 20
  br i1 %cmp44, label %if.then46, label %if.end42.if.end48_crit_edge

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %spin_up_delay to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 20, ptr %spin_up_delay, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end42.if.end48_crit_edge
  %17 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %version, align 1
  %checksum = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %n.0, i32 0, i32 2
  %18 = ptrtoint ptr %checksum to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %checksum, align 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end48
  %cksum.07.i = phi i8 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 90, %if.end48 ]
  %len.addr.06.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 256, %if.end48 ]
  %dec.i = add nsw i32 %len.addr.06.i, -1
  %arrayidx.i = getelementptr i8, ptr %n.0, i32 %dec.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %add.i = add i8 %21, %cksum.07.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %esas2r_calc_byte_cksum.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

esas2r_calc_byte_cksum.exit:                      ; preds = %while.body.i
  %sub = sub i8 %19, %add.i
  %22 = ptrtoint ptr %checksum to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %sub, ptr %checksum, align 1
  %nvram55 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %23 = ptrtoint ptr %nvram55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nvram55, align 4
  %25 = call ptr @memcpy(ptr %24, ptr %n.0, i32 256)
  %26 = load ptr, ptr %nvram55, align 4
  tail call fastcc void @esas2r_disable_heartbeat(ptr noundef %a)
  %call57 = tail call fastcc zeroext i8 @esas2r_calc_byte_xor_cksum(ptr noundef %26, i32 noundef 256)
  tail call void @esas2r_build_flash_req(ptr noundef %a, ptr noundef %rq, i8 noundef zeroext 0, i8 noundef zeroext %call57, i32 noundef 8126464, i32 noundef 256) #11
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags, align 4
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool60.not = icmp eq i32 %29, 0
  %data66 = getelementptr inbounds %struct.atto_vda_flash_req, ptr %1, i32 0, i32 9
  br i1 %tobool60.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %esas2r_calc_byte_cksum.exit
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %data66 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 65537, ptr %data66, align 1
  %uncached_phys = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 23
  %31 = ptrtoint ptr %uncached_phys to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %uncached_phys, align 8
  %uncached = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 24
  %33 = ptrtoint ptr %uncached to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %uncached, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv63 = sext i32 %sub.ptr.sub to i64
  %add = add i64 %32, %conv63
  %35 = tail call i64 @llvm.bswap.i64(i64 %add)
  %address = getelementptr inbounds %struct.atto_vda_flash_req, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 4
  %36 = ptrtoint ptr %address to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %address, align 1
  br label %if.end78

if.else:                                          ; preds = %esas2r_calc_byte_cksum.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ctl_len = getelementptr inbounds %struct.atto_vda_flash_req, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 8
  %37 = ptrtoint ptr %ctl_len to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 65536, ptr %ctl_len, align 1
  %uncached_phys68 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 23
  %38 = ptrtoint ptr %uncached_phys68 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %uncached_phys68, align 8
  %uncached69 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 24
  %40 = ptrtoint ptr %uncached69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %uncached69, align 8
  %sub.ptr.lhs.cast70 = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast71 = ptrtoint ptr %41 to i32
  %sub.ptr.sub72 = sub i32 %sub.ptr.lhs.cast70, %sub.ptr.rhs.cast71
  %conv73 = sext i32 %sub.ptr.sub72 to i64
  %add74 = add i64 %39, %conv73
  %42 = tail call i64 @llvm.bswap.i64(i64 %add74)
  %43 = ptrtoint ptr %data66 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %data66, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then61
  %interrupt_cb = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 14
  %44 = ptrtoint ptr %interrupt_cb to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @esas2r_nvram_callback, ptr %interrupt_cb, align 8
  tail call void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then40, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then11 ], [ false, %if.then40 ], [ true, %if.end78 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @esas2r_calc_byte_xor_cksum(ptr noundef %addr, i32 noundef %len) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not6 = icmp eq i32 %len, 0
  %0 = ptrtoint ptr %addr to i32
  %and7 = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 0
  %or.cond9 = or i1 %tobool.not6, %cmp8
  br i1 %or.cond9, label %entry.while.cond3.preheader_crit_edge, label %if.end

entry.while.cond3.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %if.end.3, %if.end.2.while.cond3.preheader_crit_edge, %if.end.1.while.cond3.preheader_crit_edge, %if.end.while.cond3.preheader_crit_edge, %entry.while.cond3.preheader_crit_edge
  %cksum.sroa.13.0.lcssa = phi i8 [ 0, %entry.while.cond3.preheader_crit_edge ], [ %2, %if.end.while.cond3.preheader_crit_edge ], [ %xor5.1, %if.end.1.while.cond3.preheader_crit_edge ], [ %xor5.2, %if.end.2.while.cond3.preheader_crit_edge ], [ %xor5.3, %if.end.3 ]
  %len.addr.0.lcssa = phi i32 [ %len, %entry.while.cond3.preheader_crit_edge ], [ %dec, %if.end.while.cond3.preheader_crit_edge ], [ %dec.1, %if.end.1.while.cond3.preheader_crit_edge ], [ %dec.2, %if.end.2.while.cond3.preheader_crit_edge ], [ %dec.3, %if.end.3 ]
  %addr.addr.0.lcssa = phi ptr [ %addr, %entry.while.cond3.preheader_crit_edge ], [ %incdec.ptr, %if.end.while.cond3.preheader_crit_edge ], [ %incdec.ptr.1, %if.end.1.while.cond3.preheader_crit_edge ], [ %incdec.ptr.2, %if.end.2.while.cond3.preheader_crit_edge ], [ %incdec.ptr.3, %if.end.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.0.lcssa)
  %cmp415 = icmp ugt i32 %len.addr.0.lcssa, 3
  br i1 %cmp415, label %while.cond3.preheader.while.body6_crit_edge, label %while.cond3.preheader.while.cond9.preheader_crit_edge

while.cond3.preheader.while.cond9.preheader_crit_edge: ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond9.preheader

while.cond3.preheader.while.body6_crit_edge:      ; preds = %while.cond3.preheader
  br label %while.body6

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %incdec.ptr = getelementptr i8, ptr %addr, i32 1
  %dec = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %3 = ptrtoint ptr %incdec.ptr to i32
  %and = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.end.while.cond3.preheader_crit_edge, label %if.end.1

if.end.while.cond3.preheader_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond3.preheader

if.end.1:                                         ; preds = %if.end
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr, align 1
  %xor5.1 = xor i8 %5, %2
  %incdec.ptr.1 = getelementptr i8, ptr %addr, i32 2
  %dec.1 = add i32 %len, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool.not.1 = icmp eq i32 %dec.1, 0
  %6 = ptrtoint ptr %incdec.ptr.1 to i32
  %and.1 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp.1 = icmp eq i32 %and.1, 0
  %or.cond.1 = or i1 %tobool.not.1, %cmp.1
  br i1 %or.cond.1, label %if.end.1.while.cond3.preheader_crit_edge, label %if.end.2

if.end.1.while.cond3.preheader_crit_edge:         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond3.preheader

if.end.2:                                         ; preds = %if.end.1
  %7 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.1, align 1
  %xor5.2 = xor i8 %8, %xor5.1
  %incdec.ptr.2 = getelementptr i8, ptr %addr, i32 3
  %dec.2 = add i32 %len, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %tobool.not.2 = icmp eq i32 %dec.2, 0
  %9 = ptrtoint ptr %incdec.ptr.2 to i32
  %and.2 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %cmp.2 = icmp eq i32 %and.2, 0
  %or.cond.2 = or i1 %tobool.not.2, %cmp.2
  br i1 %or.cond.2, label %if.end.2.while.cond3.preheader_crit_edge, label %if.end.3

if.end.2.while.cond3.preheader_crit_edge:         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond3.preheader

if.end.3:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %incdec.ptr.2, align 1
  %xor5.3 = xor i8 %11, %xor5.2
  %incdec.ptr.3 = getelementptr i8, ptr %addr, i32 4
  %dec.3 = add i32 %len, -4
  br label %while.cond3.preheader

while.cond3.while.cond9.preheader_crit_edge:      ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #13
  %cksum.sroa.13.0.extract.trunc95.le = trunc i32 %xor7 to i8
  %cksum.sroa.0.0.extract.trunc50.le = trunc i32 %cksum.sroa.0.0.extract.shift49 to i8
  %cksum.sroa.11.0.extract.trunc66.le = trunc i32 %cksum.sroa.11.0.extract.shift65 to i8
  %cksum.sroa.12.0.extract.trunc82.le = trunc i32 %cksum.sroa.12.0.extract.shift81 to i8
  br label %while.cond9.preheader

while.cond9.preheader:                            ; preds = %while.cond3.while.cond9.preheader_crit_edge, %while.cond3.preheader.while.cond9.preheader_crit_edge
  %cksum.sroa.13.1.lcssa = phi i8 [ %cksum.sroa.13.0.extract.trunc95.le, %while.cond3.while.cond9.preheader_crit_edge ], [ %cksum.sroa.13.0.lcssa, %while.cond3.preheader.while.cond9.preheader_crit_edge ]
  %cksum.sroa.12.1.lcssa = phi i8 [ %cksum.sroa.12.0.extract.trunc82.le, %while.cond3.while.cond9.preheader_crit_edge ], [ 0, %while.cond3.preheader.while.cond9.preheader_crit_edge ]
  %cksum.sroa.11.1.lcssa = phi i8 [ %cksum.sroa.11.0.extract.trunc66.le, %while.cond3.while.cond9.preheader_crit_edge ], [ 0, %while.cond3.preheader.while.cond9.preheader_crit_edge ]
  %cksum.sroa.0.1.lcssa = phi i8 [ %cksum.sroa.0.0.extract.trunc50.le, %while.cond3.while.cond9.preheader_crit_edge ], [ 0, %while.cond3.preheader.while.cond9.preheader_crit_edge ]
  %len.addr.1.lcssa = phi i32 [ %sub, %while.cond3.while.cond9.preheader_crit_edge ], [ %len.addr.0.lcssa, %while.cond3.preheader.while.cond9.preheader_crit_edge ]
  %addr.addr.1.lcssa = phi ptr [ %add.ptr, %while.cond3.while.cond9.preheader_crit_edge ], [ %addr.addr.0.lcssa, %while.cond3.preheader.while.cond9.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.lcssa)
  %tobool11.not28 = icmp eq i32 %len.addr.1.lcssa, 0
  br i1 %tobool11.not28, label %while.cond9.preheader.while.end16_crit_edge, label %while.cond9.preheader.while.body12_crit_edge

while.cond9.preheader.while.body12_crit_edge:     ; preds = %while.cond9.preheader
  br label %while.body12

while.cond9.preheader.while.end16_crit_edge:      ; preds = %while.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end16

while.body6:                                      ; preds = %while.body6.while.body6_crit_edge, %while.cond3.preheader.while.body6_crit_edge
  %addr.addr.121 = phi ptr [ %add.ptr, %while.body6.while.body6_crit_edge ], [ %addr.addr.0.lcssa, %while.cond3.preheader.while.body6_crit_edge ]
  %len.addr.120 = phi i32 [ %sub, %while.body6.while.body6_crit_edge ], [ %len.addr.0.lcssa, %while.cond3.preheader.while.body6_crit_edge ]
  %cksum.sroa.0.119 = phi i32 [ %cksum.sroa.0.0.extract.shift49, %while.body6.while.body6_crit_edge ], [ 0, %while.cond3.preheader.while.body6_crit_edge ]
  %cksum.sroa.11.118 = phi i32 [ %cksum.sroa.11.0.extract.shift65, %while.body6.while.body6_crit_edge ], [ 0, %while.cond3.preheader.while.body6_crit_edge ]
  %cksum.sroa.12.117 = phi i32 [ %cksum.sroa.12.0.extract.shift81, %while.body6.while.body6_crit_edge ], [ 0, %while.cond3.preheader.while.body6_crit_edge ]
  %cksum.sroa.13.116 = phi i8 [ %cksum.sroa.13.0.extract.trunc95, %while.body6.while.body6_crit_edge ], [ %cksum.sroa.13.0.lcssa, %while.cond3.preheader.while.body6_crit_edge ]
  %cksum.sroa.13.0.insert.ext92 = zext i8 %cksum.sroa.13.116 to i32
  %cksum.sroa.12.0.insert.ext77 = shl nuw i32 %cksum.sroa.12.117, 8
  %cksum.sroa.12.0.insert.shift78 = and i32 %cksum.sroa.12.0.insert.ext77, 65280
  %cksum.sroa.12.0.insert.insert80 = or i32 %cksum.sroa.12.0.insert.shift78, %cksum.sroa.13.0.insert.ext92
  %cksum.sroa.11.0.insert.ext61 = shl nuw i32 %cksum.sroa.11.118, 16
  %cksum.sroa.11.0.insert.shift62 = and i32 %cksum.sroa.11.0.insert.ext61, 16711680
  %cksum.sroa.11.0.insert.insert64 = or i32 %cksum.sroa.12.0.insert.insert80, %cksum.sroa.11.0.insert.shift62
  %cksum.sroa.0.0.insert.shift46 = shl nuw i32 %cksum.sroa.0.119, 24
  %cksum.sroa.0.0.insert.insert48 = or i32 %cksum.sroa.11.0.insert.insert64, %cksum.sroa.0.0.insert.shift46
  %12 = ptrtoint ptr %addr.addr.121 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.addr.121, align 4
  %xor7 = xor i32 %13, %cksum.sroa.0.0.insert.insert48
  %cksum.sroa.0.0.extract.shift49 = lshr i32 %xor7, 24
  %cksum.sroa.11.0.extract.shift65 = lshr i32 %xor7, 16
  %cksum.sroa.12.0.extract.shift81 = lshr i32 %xor7, 8
  %cksum.sroa.13.0.extract.trunc95 = trunc i32 %xor7 to i8
  %add.ptr = getelementptr i8, ptr %addr.addr.121, i32 4
  %sub = add i32 %len.addr.120, -4
  %cmp4 = icmp ugt i32 %sub, 3
  br i1 %cmp4, label %while.body6.while.body6_crit_edge, label %while.cond3.while.cond9.preheader_crit_edge

while.body6.while.body6_crit_edge:                ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body6

while.body12:                                     ; preds = %while.body12.while.body12_crit_edge, %while.cond9.preheader.while.body12_crit_edge
  %addr.addr.231 = phi ptr [ %incdec.ptr15, %while.body12.while.body12_crit_edge ], [ %addr.addr.1.lcssa, %while.cond9.preheader.while.body12_crit_edge ]
  %len.addr.230 = phi i32 [ %dec10, %while.body12.while.body12_crit_edge ], [ %len.addr.1.lcssa, %while.cond9.preheader.while.body12_crit_edge ]
  %cksum.sroa.13.229 = phi i8 [ %xor144, %while.body12.while.body12_crit_edge ], [ %cksum.sroa.13.1.lcssa, %while.cond9.preheader.while.body12_crit_edge ]
  %dec10 = add i32 %len.addr.230, -1
  %14 = ptrtoint ptr %addr.addr.231 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr.addr.231, align 1
  %xor144 = xor i8 %15, %cksum.sroa.13.229
  %incdec.ptr15 = getelementptr i8, ptr %addr.addr.231, i32 1
  %tobool11.not = icmp eq i32 %dec10, 0
  br i1 %tobool11.not, label %while.body12.while.end16_crit_edge, label %while.body12.while.body12_crit_edge

while.body12.while.body12_crit_edge:              ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body12

while.body12.while.end16_crit_edge:               ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end16

while.end16:                                      ; preds = %while.body12.while.end16_crit_edge, %while.cond9.preheader.while.end16_crit_edge
  %cksum.sroa.13.2.lcssa = phi i8 [ %cksum.sroa.13.1.lcssa, %while.cond9.preheader.while.end16_crit_edge ], [ %xor144, %while.body12.while.end16_crit_edge ]
  %xor201 = xor i8 %cksum.sroa.11.1.lcssa, %cksum.sroa.12.1.lcssa
  %xor232 = xor i8 %xor201, %cksum.sroa.0.1.lcssa
  %xor263 = xor i8 %xor232, %cksum.sroa.13.2.lcssa
  ret i8 %xor263
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esas2r_nvram_callback(ptr noundef %a, ptr nocapture noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %0 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %vrq1 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %2 = ptrtoint ptr %vrq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vrq1, align 8
  %sub_func = getelementptr inbounds %struct.atto_vda_flash_req, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sub_func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sub_func, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %5, label %if.then.if.endthread-pre-split_crit_edge [
    i8 0, label %sw.bb
    i8 2, label %sw.bb6
    i8 1, label %sw.bb9
  ]

if.then.if.endthread-pre-split_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.endthread-pre-split

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %sub_func to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %sub_func, align 1
  %8 = ptrtoint ptr %req_stat to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -2, ptr %req_stat, align 1
  br label %if.end23

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %sub_func to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %sub_func, align 1
  %10 = ptrtoint ptr %req_stat to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -2, ptr %req_stat, align 1
  br label %if.end23

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call zeroext i1 @esas2r_nvram_validate(ptr noundef %a)
  br label %if.endthread-pre-split

if.endthread-pre-split:                           ; preds = %sw.bb9, %if.then.if.endthread-pre-split_crit_edge
  %11 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %req_stat, align 1
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %entry.if.end_crit_edge
  %12 = phi i8 [ %.pr, %if.endthread-pre-split ], [ %1, %entry.if.end_crit_edge ]
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %12, label %if.else [
    i8 -2, label %if.end.if.end23_crit_edge
    i8 0, label %if.then20
  ]

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 12, ptr noundef %flags) #11
  br label %if.end22

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %flags21 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %flags21) #11
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then20
  %flags.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %16 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end22.if.else.i_crit_edge

if.end22.if.else.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end22
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i = icmp eq i32 %19, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %nvram.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %20 = ptrtoint ptr %nvram.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nvram.i, align 4
  %options2.i = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %options2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %options2.i, align 1
  %24 = and i8 %23, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool5.not.i = icmp eq i8 %24, 0
  br i1 %tobool5.not.i, label %land.lhs.true4.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true4.i.if.else.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags.i) #11
  br label %esas2r_enable_heartbeat.exit

if.else.i:                                        ; preds = %land.lhs.true4.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end22.if.else.i_crit_edge
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags.i) #11
  br label %esas2r_enable_heartbeat.exit

esas2r_enable_heartbeat.exit:                     ; preds = %if.else.i, %if.then.i
  %nvram_semaphore = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 90
  tail call void @up(ptr noundef %nvram_semaphore) #11
  br label %if.end23

if.end23:                                         ; preds = %esas2r_enable_heartbeat.exit, %if.end.if.end23_crit_edge, %sw.bb6, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_nvram_set_defaults(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nvram = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %0 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvram, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %2) #11
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %flags) #11
  %3 = call ptr @memcpy(ptr %1, ptr @default_sas_nvram, i32 256)
  %arrayidx = getelementptr %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 13, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 111, ptr %arrayidx, align 1
  %conv3 = lshr i32 %call, 8
  %conv4 = trunc i32 %conv3 to i8
  %arrayidx6 = getelementptr %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 13, i32 4
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %arrayidx6, align 1
  %conv8 = trunc i32 %call to i8
  %arrayidx10 = getelementptr %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 13, i32 5
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv8, ptr %arrayidx10, align 1
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %7 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcid, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %number, align 4
  %arrayidx12 = getelementptr %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 13, i32 6
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx12, align 1
  %14 = load ptr, ptr %pcid, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devfn, align 4
  %conv14 = trunc i32 %16 to i8
  %arrayidx16 = getelementptr %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 13, i32 7
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv14, ptr %arrayidx16, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @esas2r_nvram_get_defaults(ptr nocapture noundef readonly %a, ptr nocapture noundef writeonly %nvram) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nvram1 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %0 = ptrtoint ptr %nvram1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvram1, align 4
  %sas_addr2 = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %sas_addr2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %sas_addr.sroa.0.0.copyload = load i8, ptr %sas_addr2, align 1
  %sas_addr.sroa.5.0.arraydecay.sroa_idx = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %sas_addr.sroa.5.0.arraydecay.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %sas_addr.sroa.5.0.copyload = load i8, ptr %sas_addr.sroa.5.0.arraydecay.sroa_idx, align 1
  %sas_addr.sroa.6.0.arraydecay.sroa_idx = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %sas_addr.sroa.6.0.arraydecay.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %sas_addr.sroa.6.0.copyload = load i8, ptr %sas_addr.sroa.6.0.arraydecay.sroa_idx, align 1
  %sas_addr.sroa.7.0.arraydecay.sroa_idx = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 13, i32 3
  %5 = ptrtoint ptr %sas_addr.sroa.7.0.arraydecay.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %sas_addr.sroa.7.0.copyload = load i8, ptr %sas_addr.sroa.7.0.arraydecay.sroa_idx, align 1
  %sas_addr.sroa.8.0.arraydecay.sroa_idx = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %sas_addr.sroa.8.0.arraydecay.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %sas_addr.sroa.8.0.copyload = load i8, ptr %sas_addr.sroa.8.0.arraydecay.sroa_idx, align 1
  %sas_addr.sroa.9.0.arraydecay.sroa_idx = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 13, i32 5
  %7 = ptrtoint ptr %sas_addr.sroa.9.0.arraydecay.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %sas_addr.sroa.9.0.copyload = load i8, ptr %sas_addr.sroa.9.0.arraydecay.sroa_idx, align 1
  %sas_addr.sroa.10.0.arraydecay.sroa_idx = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 13, i32 6
  %8 = ptrtoint ptr %sas_addr.sroa.10.0.arraydecay.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %sas_addr.sroa.10.0.copyload = load i8, ptr %sas_addr.sroa.10.0.arraydecay.sroa_idx, align 1
  %sas_addr.sroa.11.0.arraydecay.sroa_idx = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 13, i32 7
  %9 = ptrtoint ptr %sas_addr.sroa.11.0.arraydecay.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %sas_addr.sroa.11.0.copyload = load i8, ptr %sas_addr.sroa.11.0.arraydecay.sroa_idx, align 1
  %10 = call ptr @memcpy(ptr %nvram, ptr @default_sas_nvram, i32 256)
  %sas_addr3 = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %nvram, i32 0, i32 13
  %11 = ptrtoint ptr %sas_addr3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %sas_addr.sroa.0.0.copyload, ptr %sas_addr3, align 1
  %sas_addr.sroa.5.0.arrayidx4.sroa_idx = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %nvram, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %sas_addr.sroa.5.0.arrayidx4.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %sas_addr.sroa.5.0.copyload, ptr %sas_addr.sroa.5.0.arrayidx4.sroa_idx, align 1
  %sas_addr.sroa.6.0.arrayidx4.sroa_idx = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %nvram, i32 0, i32 13, i32 2
  %13 = ptrtoint ptr %sas_addr.sroa.6.0.arrayidx4.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %sas_addr.sroa.6.0.copyload, ptr %sas_addr.sroa.6.0.arrayidx4.sroa_idx, align 1
  %sas_addr.sroa.7.0.arrayidx4.sroa_idx = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %nvram, i32 0, i32 13, i32 3
  %14 = ptrtoint ptr %sas_addr.sroa.7.0.arrayidx4.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %sas_addr.sroa.7.0.copyload, ptr %sas_addr.sroa.7.0.arrayidx4.sroa_idx, align 1
  %sas_addr.sroa.8.0.arrayidx4.sroa_idx = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %nvram, i32 0, i32 13, i32 4
  %15 = ptrtoint ptr %sas_addr.sroa.8.0.arrayidx4.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %sas_addr.sroa.8.0.copyload, ptr %sas_addr.sroa.8.0.arrayidx4.sroa_idx, align 1
  %sas_addr.sroa.9.0.arrayidx4.sroa_idx = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %nvram, i32 0, i32 13, i32 5
  %16 = ptrtoint ptr %sas_addr.sroa.9.0.arrayidx4.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %sas_addr.sroa.9.0.copyload, ptr %sas_addr.sroa.9.0.arrayidx4.sroa_idx, align 1
  %sas_addr.sroa.10.0.arrayidx4.sroa_idx = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %nvram, i32 0, i32 13, i32 6
  %17 = ptrtoint ptr %sas_addr.sroa.10.0.arrayidx4.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %sas_addr.sroa.10.0.copyload, ptr %sas_addr.sroa.10.0.arrayidx4.sroa_idx, align 1
  %sas_addr.sroa.11.0.arrayidx4.sroa_idx = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %nvram, i32 0, i32 13, i32 7
  %18 = ptrtoint ptr %sas_addr.sroa.11.0.arrayidx4.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %sas_addr.sroa.11.0.copyload, ptr %sas_addr.sroa.11.0.arrayidx4.sroa_idx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_fm_api(ptr noundef %a, ptr noundef %fi, ptr noundef %rq, ptr nocapture noundef readonly %sgc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flash_context = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 51
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %call = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %status = getelementptr inbounds %struct.esas2r_flash_img, ptr %fi, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 9, ptr %status, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %sgc1 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 51, i32 12
  %1 = call ptr @memcpy(ptr %sgc1, ptr %sgc, i32 52)
  %2 = ptrtoint ptr %flash_context to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fi, ptr %flash_context, align 4
  %cur_offset = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 51, i32 12, i32 3
  %3 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_offset, align 4
  %sgc_offset = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 51, i32 2
  %5 = ptrtoint ptr %sgc_offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %sgc_offset, align 4
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %6 = ptrtoint ptr %req_stat to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %req_stat, align 1
  %interrupt_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %7 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %flash_context, ptr %interrupt_cx, align 4
  %8 = ptrtoint ptr %fi to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fi, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cond = icmp eq i8 %9, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %scratch_buf = getelementptr inbounds %struct.esas2r_flash_img, ptr %fi, i32 0, i32 11
  %scratch = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 51, i32 3
  %10 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %scratch_buf, ptr %scratch, align 4
  %num_comps = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 51, i32 7
  %11 = ptrtoint ptr %num_comps to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 6, ptr %num_comps, align 2
  %fi_hdr_len = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 51, i32 4
  %12 = ptrtoint ptr %fi_hdr_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2176, ptr %fi_hdr_len, align 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

sw.default:                                       ; preds = %if.end
  %16 = ptrtoint ptr %flash_context to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %flash_context, align 4
  %status.i = getelementptr inbounds %struct.esas2r_flash_img, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %status.i, align 1
  %19 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %req_stat, align 1
  %conv.i = zext i8 %20 to i16
  %driver_error.i = getelementptr inbounds %struct.esas2r_flash_img, ptr %17, i32 0, i32 6
  %21 = ptrtoint ptr %driver_error.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %driver_error.i, align 2
  %interrupt_cb.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 14
  %22 = ptrtoint ptr %interrupt_cb.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %interrupt_cb.i, align 8
  store i8 0, ptr %req_stat, align 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %25 = and i32 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %sw.default.if.else.i.i_crit_edge

sw.default.if.else.i.i_crit_edge:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %sw.default
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %nvram.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %29 = ptrtoint ptr %nvram.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nvram.i.i, align 4
  %options2.i.i = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %options2.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %options2.i.i, align 1
  %33 = and i8 %32, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool5.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true4.i.i.if.else.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.if.else.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags) #11
  br label %complete_fmapi_req.exit

if.else.i.i:                                      ; preds = %land.lhs.true4.i.i.if.else.i.i_crit_edge, %land.lhs.true.i.i.if.else.i.i_crit_edge, %sw.default.if.else.i.i_crit_edge
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags) #11
  br label %complete_fmapi_req.exit

complete_fmapi_req.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #11
  br label %cleanup

if.then8:                                         ; preds = %sw.bb
  %34 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %interrupt_cx, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %status.i175 = getelementptr inbounds %struct.esas2r_flash_img, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %status.i175 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 15, ptr %status.i175, align 1
  %39 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %req_stat, align 1
  %conv.i177 = zext i8 %40 to i16
  %driver_error.i178 = getelementptr inbounds %struct.esas2r_flash_img, ptr %37, i32 0, i32 6
  %41 = ptrtoint ptr %driver_error.i178 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i177, ptr %driver_error.i178, align 2
  %interrupt_cb.i179 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 14
  %42 = ptrtoint ptr %interrupt_cb.i179 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %interrupt_cb.i179, align 8
  store i8 0, ptr %req_stat, align 1
  %scratch.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %35, i32 0, i32 3
  %43 = ptrtoint ptr %scratch.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %scratch.i, align 4
  %45 = call ptr @memset(ptr %44, i32 0, i32 2048)
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags, align 4
  %48 = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i181 = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i181, label %land.lhs.true.i.i183, label %if.then8.if.else.i.i189_crit_edge

if.then8.if.else.i.i189_crit_edge:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i189

land.lhs.true.i.i183:                             ; preds = %if.then8
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %flags, align 4
  %51 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool3.not.i.i182 = icmp eq i32 %51, 0
  br i1 %tobool3.not.i.i182, label %land.lhs.true4.i.i187, label %land.lhs.true.i.i183.if.else.i.i189_crit_edge

land.lhs.true.i.i183.if.else.i.i189_crit_edge:    ; preds = %land.lhs.true.i.i183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i189

land.lhs.true4.i.i187:                            ; preds = %land.lhs.true.i.i183
  %nvram.i.i184 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %52 = ptrtoint ptr %nvram.i.i184 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nvram.i.i184, align 4
  %options2.i.i185 = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %options2.i.i185 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %options2.i.i185, align 1
  %56 = and i8 %55, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool5.not.i.i186 = icmp eq i8 %56, 0
  br i1 %tobool5.not.i.i186, label %land.lhs.true4.i.i187.if.else.i.i189_crit_edge, label %if.then.i.i188

land.lhs.true4.i.i187.if.else.i.i189_crit_edge:   ; preds = %land.lhs.true4.i.i187
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i189

if.then.i.i188:                                   ; preds = %land.lhs.true4.i.i187
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags) #11
  br label %complete_fmapi_req.exit190

if.else.i.i189:                                   ; preds = %land.lhs.true4.i.i187.if.else.i.i189_crit_edge, %land.lhs.true.i.i183.if.else.i.i189_crit_edge, %if.then8.if.else.i.i189_crit_edge
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags) #11
  br label %complete_fmapi_req.exit190

complete_fmapi_req.exit190:                       ; preds = %if.else.i.i189, %if.then.i.i188
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #11
  br label %cleanup

if.end10:                                         ; preds = %sw.bb
  %action = getelementptr inbounds %struct.esas2r_flash_img, ptr %fi, i32 0, i32 3
  %57 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %action, align 1
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %58, label %if.end10.sw.default83_crit_edge [
    i8 0, label %sw.bb12
    i8 2, label %sw.bb32
  ]

if.end10.sw.default83_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default83

sw.bb12:                                          ; preds = %if.end10
  %60 = ptrtoint ptr %flash_context to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %flash_context, align 4
  %length.i = getelementptr inbounds %struct.esas2r_flash_img, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %length.i, align 4
  %and.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.bb12.if.then14_crit_edge

sw.bb12.if.then14_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

lor.lhs.false.i:                                  ; preds = %sw.bb12
  %64 = ptrtoint ptr %fi_hdr_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fi_hdr_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp.i = icmp ult i32 %63, %65
  br i1 %cmp.i, label %lor.lhs.false.i.if.then14_crit_edge, label %if.end.i

lor.lhs.false.i.if.then14_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end.i:                                         ; preds = %lor.lhs.false.i
  %pcid.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %66 = ptrtoint ptr %pcid.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcid.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %device.i.i, align 2
  %70 = zext i16 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %69, label %if.end.i.if.then14_crit_edge [
    i16 44, label %if.end.i.lor.lhs.false4.i_crit_edge
    i16 73, label %if.end.i.sw.bb1.i.i_crit_edge
    i16 102, label %if.end.i.sw.bb1.i.i_crit_edge244
    i16 103, label %if.end.i.sw.bb1.i.i_crit_edge245
    i16 104, label %if.end.i.sw.bb1.i.i_crit_edge246
  ]

if.end.i.sw.bb1.i.i_crit_edge246:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i.i

if.end.i.sw.bb1.i.i_crit_edge245:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i.i

if.end.i.sw.bb1.i.i_crit_edge244:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i.i

if.end.i.sw.bb1.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i.i

if.end.i.lor.lhs.false4.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false4.i

if.end.i.if.then14_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

sw.bb1.i.i:                                       ; preds = %if.end.i.sw.bb1.i.i_crit_edge, %if.end.i.sw.bb1.i.i_crit_edge244, %if.end.i.sw.bb1.i.i_crit_edge245, %if.end.i.sw.bb1.i.i_crit_edge246
  br label %lor.lhs.false4.i

lor.lhs.false4.i:                                 ; preds = %sw.bb1.i.i, %if.end.i.lor.lhs.false4.i_crit_edge
  %type.0.i.ph.i = phi i8 [ 11, %if.end.i.lor.lhs.false4.i_crit_edge ], [ 15, %sw.bb1.i.i ]
  %adap_typ.i = getelementptr inbounds %struct.esas2r_flash_img, ptr %61, i32 0, i32 2
  %71 = ptrtoint ptr %adap_typ.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %adap_typ.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %type.0.i.ph.i)
  %cmp7.not.i = icmp eq i8 %72, %type.0.i.ph.i
  br i1 %cmp7.not.i, label %if.end11.i, label %lor.lhs.false4.i.if.then14_crit_edge

lor.lhs.false4.i.if.then14_crit_edge:             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end11.i:                                       ; preds = %lor.lhs.false4.i
  %num_comps.i = getelementptr inbounds %struct.esas2r_flash_img, ptr %61, i32 0, i32 8
  %73 = ptrtoint ptr %num_comps.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %num_comps.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp14166.not.i = icmp eq i16 %74, 0
  br i1 %cmp14166.not.i, label %if.end11.i.if.end75.i_crit_edge, label %for.body.preheader.i

if.end11.i.if.end75.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.i

for.body.preheader.i:                             ; preds = %if.end11.i
  %cmp_hdr.i = getelementptr inbounds %struct.esas2r_flash_img, ptr %61, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %ch.0171.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %cmp_hdr.i, %for.body.preheader.i ]
  %len.0169.i = phi i32 [ %len.2.ph.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %i.0168.i = phi i16 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %imgerr.0.off0167.i = phi i1 [ %imgerr.2.off0.ph.i, %for.inc.i.for.body.i_crit_edge ], [ false, %for.body.preheader.i ]
  %75 = ptrtoint ptr %ch.0171.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ch.0171.i, align 4
  %77 = zext i8 %76 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %i.0168.i, i16 %77)
  %cmp18.not.i = icmp eq i16 %i.0168.i, %77
  br i1 %cmp18.not.i, label %if.end22.i, label %if.then20.i

if.then20.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %status21.i = getelementptr inbounds %struct.esas2r_component_header, ptr %ch.0171.i, i32 0, i32 1
  %78 = ptrtoint ptr %status21.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 3, ptr %status21.i, align 1
  br label %for.inc.i

if.end22.i:                                       ; preds = %for.body.i
  %79 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %76, label %if.end22.i.if.then14_crit_edge [
    i8 2, label %if.end22.i.sw.bb30.i_crit_edge
    i8 3, label %sw.bb25.i
    i8 5, label %sw.bb26.i
    i8 0, label %if.end22.i.if.else.i_crit_edge
    i8 1, label %if.end22.i.if.else.i_crit_edge247
    i8 4, label %sw.bb49.i
  ]

if.end22.i.if.else.i_crit_edge247:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.end22.i.if.else.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.end22.i.sw.bb30.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30.i

if.end22.i.if.then14_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

sw.bb25.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30.i

sw.bb26.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb30.i

sw.bb30.i:                                        ; preds = %sw.bb26.i, %sw.bb25.i, %if.end22.i.sw.bb30.i_crit_edge
  %type.1152.i = phi i8 [ 1, %sw.bb25.i ], [ 3, %sw.bb26.i ], [ 0, %if.end22.i.sw.bb30.i_crit_edge ]
  %length31.i = getelementptr inbounds %struct.esas2r_component_header, ptr %ch.0171.i, i32 0, i32 4
  %80 = ptrtoint ptr %length31.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %length31.i, align 4
  %and32.i = and i32 %81, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.i = icmp ne i32 %and32.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp37.i = icmp eq i32 %81, 0
  br i1 %cmp37.i, label %sw.bb30.i.if.else.i_crit_edge, label %if.end40.i

sw.bb30.i.if.else.i_crit_edge:                    ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.end40.i:                                       ; preds = %sw.bb30.i
  %image_offset.i = getelementptr inbounds %struct.esas2r_component_header, ptr %ch.0171.i, i32 0, i32 5
  %82 = ptrtoint ptr %image_offset.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %image_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %61, i32 %83
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %85)
  %cmp.not.i.i = icmp eq i16 %85, 21930
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end40.i.if.then67.i_crit_edge

if.end40.i.if.then67.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

lor.lhs.false.i.i:                                ; preds = %if.end40.i
  %header_offset.i.i = getelementptr inbounds %struct.esas2r_boot_image, ptr %add.ptr.i, i32 0, i32 2
  %86 = ptrtoint ptr %header_offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %header_offset.i.i, align 1
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #11
  %conv2.i.i = zext i16 %88 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24, i16 %88)
  %cmp3.i.i = icmp ugt i16 %88, -24
  %and.i.i = and i32 %conv2.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i191 = icmp ne i32 %and.i.i, 0
  %or.cond.i.i = select i1 %cmp3.i.i, i1 true, i1 %tobool.not.i.i191
  call void @__sanitizer_cov_trace_const_cmp2(i16 28, i16 %88)
  %cmp9.i.i = icmp ult i16 %88, 28
  %or.cond94.i.i = or i1 %cmp9.i.i, %or.cond.i.i
  %add.i.i = add nuw nsw i32 %conv2.i.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %81)
  %cmp13.i.i = icmp ugt i32 %add.i.i, %81
  %or.cond95.i.i = select i1 %or.cond94.i.i, i1 true, i1 %cmp13.i.i
  br i1 %or.cond95.i.i, label %lor.lhs.false.i.i.if.then67.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.then67.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %conv2.i.i
  %89 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %90)
  %cmp18.not.i.i = icmp eq i8 %90, 80
  br i1 %cmp18.not.i.i, label %lor.lhs.false20.i.i, label %if.end.i.i.if.then67.i_crit_edge

if.end.i.i.if.then67.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

lor.lhs.false20.i.i:                              ; preds = %if.end.i.i
  %arrayidx22.i.i = getelementptr [4 x i8], ptr %add.ptr.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx22.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %92)
  %cmp24.not.i.i = icmp eq i8 %92, 67
  br i1 %cmp24.not.i.i, label %lor.lhs.false26.i.i, label %lor.lhs.false20.i.i.if.then67.i_crit_edge

lor.lhs.false20.i.i.if.then67.i_crit_edge:        ; preds = %lor.lhs.false20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

lor.lhs.false26.i.i:                              ; preds = %lor.lhs.false20.i.i
  %arrayidx28.i.i = getelementptr [4 x i8], ptr %add.ptr.i.i, i32 0, i32 2
  %93 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx28.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %94)
  %cmp30.not.i.i = icmp eq i8 %94, 73
  br i1 %cmp30.not.i.i, label %lor.lhs.false32.i.i, label %lor.lhs.false26.i.i.if.then67.i_crit_edge

lor.lhs.false26.i.i.if.then67.i_crit_edge:        ; preds = %lor.lhs.false26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

lor.lhs.false32.i.i:                              ; preds = %lor.lhs.false26.i.i
  %arrayidx34.i.i = getelementptr [4 x i8], ptr %add.ptr.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx34.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 82, i8 %96)
  %cmp36.not.i.i = icmp eq i8 %96, 82
  br i1 %cmp36.not.i.i, label %lor.lhs.false38.i.i, label %lor.lhs.false32.i.i.if.then67.i_crit_edge

lor.lhs.false32.i.i.if.then67.i_crit_edge:        ; preds = %lor.lhs.false32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

lor.lhs.false38.i.i:                              ; preds = %lor.lhs.false32.i.i
  %struct_length.i.i = getelementptr inbounds %struct.esas2r_boot_header, ptr %add.ptr.i.i, i32 0, i32 4
  %97 = ptrtoint ptr %struct_length.i.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %struct_length.i.i, align 1
  %99 = tail call i16 @llvm.bswap.i16(i16 %98) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %99)
  %cmp40.i.i = icmp ult i16 %99, 24
  br i1 %cmp40.i.i, label %lor.lhs.false38.i.i.if.then67.i_crit_edge, label %lor.lhs.false42.i.i

lor.lhs.false38.i.i.if.then67.i_crit_edge:        ; preds = %lor.lhs.false38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

lor.lhs.false42.i.i:                              ; preds = %lor.lhs.false38.i.i
  %class_code.i.i = getelementptr inbounds %struct.esas2r_boot_header, ptr %add.ptr.i.i, i32 0, i32 6
  %arrayidx43.i.i = getelementptr [3 x i8], ptr %class_code.i.i, i32 0, i32 2
  %100 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx43.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %101)
  %cmp45.not.i.i = icmp eq i8 %101, 1
  br i1 %cmp45.not.i.i, label %lor.lhs.false47.i.i, label %lor.lhs.false42.i.i.if.then67.i_crit_edge

lor.lhs.false42.i.i.if.then67.i_crit_edge:        ; preds = %lor.lhs.false42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

lor.lhs.false47.i.i:                              ; preds = %lor.lhs.false42.i.i
  %arrayidx49.i.i = getelementptr [3 x i8], ptr %class_code.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx49.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %103)
  %cmp51.not.i.i = icmp eq i8 %103, 4
  br i1 %cmp51.not.i.i, label %lor.lhs.false53.i.i, label %lor.lhs.false47.i.i.if.then67.i_crit_edge

lor.lhs.false47.i.i.if.then67.i_crit_edge:        ; preds = %lor.lhs.false47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

lor.lhs.false53.i.i:                              ; preds = %lor.lhs.false47.i.i
  %104 = ptrtoint ptr %class_code.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %class_code.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %cmp57.not.i.i = icmp eq i8 %105, 0
  br i1 %cmp57.not.i.i, label %lor.lhs.false59.i.i, label %lor.lhs.false53.i.i.if.then67.i_crit_edge

lor.lhs.false53.i.i.if.then67.i_crit_edge:        ; preds = %lor.lhs.false53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

lor.lhs.false59.i.i:                              ; preds = %lor.lhs.false53.i.i
  %code_type.i.i = getelementptr inbounds %struct.esas2r_boot_header, ptr %add.ptr.i.i, i32 0, i32 9
  %106 = ptrtoint ptr %code_type.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %code_type.i.i, align 1
  %108 = zext i8 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %107, label %lor.lhs.false59.i.i.if.then67.i_crit_edge [
    i8 0, label %lor.lhs.false59.i.i.chk_boot.exit.i_crit_edge
    i8 1, label %lor.lhs.false59.i.i.chk_boot.exit.i_crit_edge248
    i8 3, label %lor.lhs.false59.i.i.chk_boot.exit.i_crit_edge249
  ]

lor.lhs.false59.i.i.chk_boot.exit.i_crit_edge249: ; preds = %lor.lhs.false59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chk_boot.exit.i

lor.lhs.false59.i.i.chk_boot.exit.i_crit_edge248: ; preds = %lor.lhs.false59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chk_boot.exit.i

lor.lhs.false59.i.i.chk_boot.exit.i_crit_edge:    ; preds = %lor.lhs.false59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chk_boot.exit.i

lor.lhs.false59.i.i.if.then67.i_crit_edge:        ; preds = %lor.lhs.false59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

chk_boot.exit.i:                                  ; preds = %lor.lhs.false59.i.i.chk_boot.exit.i_crit_edge, %lor.lhs.false59.i.i.chk_boot.exit.i_crit_edge248, %lor.lhs.false59.i.i.chk_boot.exit.i_crit_edge249
  call void @__sanitizer_cov_trace_cmp1(i8 %107, i8 %type.1152.i)
  %cmp45.not.i = icmp ne i8 %107, %type.1152.i
  %spec.select.i = select i1 %cmp45.not.i, i1 true, i1 %tobool33.i
  br i1 %spec.select.i, label %chk_boot.exit.i.if.then67.i_crit_edge, label %chk_boot.exit.i.if.else.i_crit_edge

chk_boot.exit.i.if.else.i_crit_edge:              ; preds = %chk_boot.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

chk_boot.exit.i.if.then67.i_crit_edge:            ; preds = %chk_boot.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

sw.bb49.i:                                        ; preds = %if.end22.i
  %length50.i = getelementptr inbounds %struct.esas2r_component_header, ptr %ch.0171.i, i32 0, i32 4
  %109 = ptrtoint ptr %length50.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %length50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp51.i = icmp eq i32 %110, 0
  br i1 %cmp51.i, label %sw.bb49.i.if.then67.i_crit_edge, label %if.end54.i

sw.bb49.i.if.then67.i_crit_edge:                  ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

if.end54.i:                                       ; preds = %sw.bb49.i
  %image_offset55.i = getelementptr inbounds %struct.esas2r_component_header, ptr %ch.0171.i, i32 0, i32 5
  %111 = ptrtoint ptr %image_offset55.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %image_offset55.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %61, i32 %112
  %add.ptr58.i = getelementptr i8, ptr %add.ptr56.i, i32 %110
  %add.ptr.i141.i = getelementptr i16, ptr %add.ptr58.i, i32 -1
  %sub.i.i = add i32 %110, -4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end22.i.i.while.cond.i.i_crit_edge, %if.end54.i
  %pw.0.i.i = phi ptr [ %add.ptr.i141.i, %if.end54.i ], [ %add.ptr26.i.i, %if.end22.i.i.while.cond.i.i_crit_edge ]
  %sz.0.i.i = phi i32 [ 0, %if.end54.i ], [ %add24.i.i, %if.end22.i.i.while.cond.i.i_crit_edge ]
  %113 = ptrtoint ptr %pw.0.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %pw.0.i.i, align 2
  %115 = zext i16 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %114, label %while.cond.i.i.chk_cfg.exit.i_crit_edge [
    i16 1194, label %while.cond.i.i.if.end22.i.i_crit_edge
    i16 170, label %while.cond.i.i.if.end22.i.i_crit_edge250
    i16 682, label %while.cond.i.i.if.end22.i.i_crit_edge251
  ]

while.cond.i.i.if.end22.i.i_crit_edge251:         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i.i

while.cond.i.i.if.end22.i.i_crit_edge250:         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i.i

while.cond.i.i.if.end22.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i.i

while.cond.i.i.chk_cfg.exit.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chk_cfg.exit.i

if.end22.i.i:                                     ; preds = %while.cond.i.i.if.end22.i.i_crit_edge, %while.cond.i.i.if.end22.i.i_crit_edge250, %while.cond.i.i.if.end22.i.i_crit_edge251
  %incdec.ptr.i.i = getelementptr i16, ptr %pw.0.i.i, i32 -1
  %116 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %incdec.ptr.i.i, align 2
  %118 = tail call i16 @llvm.bswap.i16(i16 %117) #11
  %incdec.ptr3.i.i = getelementptr i16, ptr %pw.0.i.i, i32 -2
  %conv23.i.i = zext i16 %118 to i32
  %add.i142.i = add i32 %sz.0.i.i, 4
  %add24.i.i = add i32 %add.i142.i, %conv23.i.i
  %div1.i.i = lshr i32 %conv23.i.i, 1
  %idx.neg.i.i = sub nsw i32 0, %div1.i.i
  %add.ptr26.i.i = getelementptr i16, ptr %incdec.ptr3.i.i, i32 %idx.neg.i.i
  %cmp27.i.i = icmp ugt i32 %add24.i.i, %sub.i.i
  br i1 %cmp27.i.i, label %if.end22.i.i.chk_cfg.exit.i_crit_edge, label %if.end22.i.i.while.cond.i.i_crit_edge

if.end22.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

if.end22.i.i.chk_cfg.exit.i_crit_edge:            ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %chk_cfg.exit.i

chk_cfg.exit.i:                                   ; preds = %if.end22.i.i.chk_cfg.exit.i_crit_edge, %while.cond.i.i.chk_cfg.exit.i_crit_edge
  %sz.1.ph.i.i = phi i32 [ %sz.0.i.i, %while.cond.i.i.chk_cfg.exit.i_crit_edge ], [ %add24.i.i, %if.end22.i.i.chk_cfg.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.1.ph.i.i, i32 %110)
  %cmp34.not.i.i = icmp ne i32 %sz.1.ph.i.i, %110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz.1.ph.i.i)
  %tobool61.not163.i = icmp eq i32 %sz.1.ph.i.i, 0
  %tobool61.not.i = or i1 %cmp34.not.i.i, %tobool61.not163.i
  br i1 %tobool61.not.i, label %chk_cfg.exit.i.if.then67.i_crit_edge, label %chk_cfg.exit.i.if.else.i_crit_edge

chk_cfg.exit.i.if.else.i_crit_edge:               ; preds = %chk_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

chk_cfg.exit.i.if.then67.i_crit_edge:             ; preds = %chk_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

if.then67.i:                                      ; preds = %chk_cfg.exit.i.if.then67.i_crit_edge, %sw.bb49.i.if.then67.i_crit_edge, %chk_boot.exit.i.if.then67.i_crit_edge, %lor.lhs.false59.i.i.if.then67.i_crit_edge, %lor.lhs.false53.i.i.if.then67.i_crit_edge, %lor.lhs.false47.i.i.if.then67.i_crit_edge, %lor.lhs.false42.i.i.if.then67.i_crit_edge, %lor.lhs.false38.i.i.if.then67.i_crit_edge, %lor.lhs.false32.i.i.if.then67.i_crit_edge, %lor.lhs.false26.i.i.if.then67.i_crit_edge, %lor.lhs.false20.i.i.if.then67.i_crit_edge, %if.end.i.i.if.then67.i_crit_edge, %lor.lhs.false.i.i.if.then67.i_crit_edge, %if.end40.i.if.then67.i_crit_edge
  %status68.i = getelementptr inbounds %struct.esas2r_component_header, ptr %ch.0171.i, i32 0, i32 1
  %119 = ptrtoint ptr %status68.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 3, ptr %status68.i, align 1
  br label %for.inc.i

if.else.i:                                        ; preds = %chk_cfg.exit.i.if.else.i_crit_edge, %chk_boot.exit.i.if.else.i_crit_edge, %sw.bb30.i.if.else.i_crit_edge, %if.end22.i.if.else.i_crit_edge, %if.end22.i.if.else.i_crit_edge247
  %status69.i = getelementptr inbounds %struct.esas2r_component_header, ptr %ch.0171.i, i32 0, i32 1
  %120 = ptrtoint ptr %status69.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 -1, ptr %status69.i, align 1
  %length70.i = getelementptr inbounds %struct.esas2r_component_header, ptr %ch.0171.i, i32 0, i32 4
  %121 = ptrtoint ptr %length70.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %length70.i, align 4
  %add.i = add i32 %122, %len.0169.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then67.i, %if.then20.i
  %imgerr.2.off0.ph.i = phi i1 [ %imgerr.0.off0167.i, %if.else.i ], [ true, %if.then67.i ], [ true, %if.then20.i ]
  %len.2.ph.i = phi i32 [ %add.i, %if.else.i ], [ %len.0169.i, %if.then67.i ], [ %len.0169.i, %if.then20.i ]
  %inc.i = add nuw i16 %i.0168.i, 1
  %incdec.ptr.i = getelementptr %struct.esas2r_component_header, ptr %ch.0171.i, i32 1
  %123 = ptrtoint ptr %num_comps.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %num_comps.i, align 2
  %cmp14.i = icmp ult i16 %inc.i, %124
  br i1 %cmp14.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %imgerr.2.off0.ph.i, label %for.end.i.if.then14_crit_edge, label %for.end.i.if.end75.i_crit_edge

for.end.i.if.end75.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.i

for.end.i.if.then14_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end75.i:                                       ; preds = %for.end.i.if.end75.i_crit_edge, %if.end11.i.if.end75.i_crit_edge
  %len.0.lcssa181.i = phi i32 [ %len.2.ph.i, %for.end.i.if.end75.i_crit_edge ], [ 0, %if.end11.i.if.end75.i_crit_edge ]
  %125 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %length.i, align 4
  %127 = ptrtoint ptr %fi_hdr_len to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %fi_hdr_len, align 4
  %sub.i = sub i32 %126, %128
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.lcssa181.i, i32 %sub.i)
  %cmp78.not.i = icmp eq i32 %len.0.lcssa181.i, %sub.i
  br i1 %cmp78.not.i, label %if.end82.i, label %if.end75.i.if.then14_crit_edge

if.end75.i.if.then14_crit_edge:                   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end82.i:                                       ; preds = %if.end75.i
  %checksum.i = getelementptr inbounds %struct.esas2r_flash_img, ptr %61, i32 0, i32 5
  %129 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %checksum.i, align 4
  %131 = ptrtoint ptr %flash_context to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %flash_context, align 4
  %length.i.i = getelementptr inbounds %struct.esas2r_flash_img, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %length.i.i, align 4
  %sub.i143.i = sub i32 %134, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i143.i)
  %tobool.not12.i.i = icmp ult i32 %sub.i143.i, 2
  br i1 %tobool.not12.i.i, label %if.end82.i.calc_fi_checksum.exit.i_crit_edge, label %for.body.preheader.i.i

if.end82.i.calc_fi_checksum.exit.i_crit_edge:     ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_fi_checksum.exit.i

for.body.preheader.i.i:                           ; preds = %if.end82.i
  %add.ptr.i144.i = getelementptr i8, ptr %132, i32 %128
  %div11.i.i = lshr i32 %sub.i143.i, 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %pw.015.i.i = phi ptr [ %incdec.ptr.i146.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i144.i, %for.body.preheader.i.i ]
  %len.014.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %div11.i.i, %for.body.preheader.i.i ]
  %cksum.013.i.i = phi i16 [ %add.i145.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %135 = ptrtoint ptr %pw.015.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %pw.015.i.i, align 2
  %137 = tail call i16 @llvm.bswap.i16(i16 %136) #11
  %add.i145.i = add i16 %137, %cksum.013.i.i
  %dec.i.i = add i32 %len.014.i.i, -1
  %incdec.ptr.i146.i = getelementptr i16, ptr %pw.015.i.i, i32 1
  %tobool.not.i147.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i147.i, label %for.body.i.i.calc_fi_checksum.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.calc_fi_checksum.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_fi_checksum.exit.i

calc_fi_checksum.exit.i:                          ; preds = %for.body.i.i.calc_fi_checksum.exit.i_crit_edge, %if.end82.i.calc_fi_checksum.exit.i_crit_edge
  %cksum.0.lcssa.i.i = phi i16 [ 0, %if.end82.i.calc_fi_checksum.exit.i_crit_edge ], [ %add.i145.i, %for.body.i.i.calc_fi_checksum.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %130, i16 %cksum.0.lcssa.i.i)
  %cmp86.not.i = icmp eq i16 %130, %cksum.0.lcssa.i.i
  br i1 %cmp86.not.i, label %if.end17, label %calc_fi_checksum.exit.i.if.then14_crit_edge

calc_fi_checksum.exit.i.if.then14_crit_edge:      ; preds = %calc_fi_checksum.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.then14:                                        ; preds = %calc_fi_checksum.exit.i.if.then14_crit_edge, %if.end75.i.if.then14_crit_edge, %for.end.i.if.then14_crit_edge, %if.end22.i.if.then14_crit_edge, %lor.lhs.false4.i.if.then14_crit_edge, %if.end.i.if.then14_crit_edge, %lor.lhs.false.i.if.then14_crit_edge, %sw.bb12.if.then14_crit_edge
  %.sink.i = phi i8 [ 6, %lor.lhs.false.i.if.then14_crit_edge ], [ 6, %sw.bb12.if.then14_crit_edge ], [ 3, %if.end.i.if.then14_crit_edge ], [ 3, %lor.lhs.false4.i.if.then14_crit_edge ], [ 11, %for.end.i.if.then14_crit_edge ], [ 6, %if.end75.i.if.then14_crit_edge ], [ 5, %calc_fi_checksum.exit.i.if.then14_crit_edge ], [ 7, %if.end22.i.if.then14_crit_edge ]
  %status64.i = getelementptr inbounds %struct.esas2r_flash_img, ptr %61, i32 0, i32 1
  %138 = ptrtoint ptr %status64.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %.sink.i, ptr %status64.i, align 1
  %status15 = getelementptr inbounds %struct.esas2r_flash_img, ptr %fi, i32 0, i32 1
  %139 = ptrtoint ptr %status15 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %status15, align 1
  tail call fastcc void @complete_fmapi_req(ptr noundef %a, ptr noundef %rq, i8 noundef zeroext %140)
  br label %cleanup

if.end17:                                         ; preds = %calc_fi_checksum.exit.i
  %length = getelementptr %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10, i32 2, i32 4
  %141 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool18.not = icmp eq i32 %142, 0
  br i1 %tobool18.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @fix_bios(ptr noundef %a, ptr noundef %fi)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %length23 = getelementptr %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10, i32 5, i32 4
  %143 = ptrtoint ptr %length23 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %length23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool24.not = icmp eq i32 %144, 0
  br i1 %tobool24.not, label %if.end20.if.end26_crit_edge, label %if.then25

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @fix_efi(ptr noundef %a, ptr noundef %fi)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end20.if.end26_crit_edge
  %145 = ptrtoint ptr %flash_context to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %flash_context, align 4
  %length.i192 = getelementptr inbounds %struct.esas2r_flash_img, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %length.i192 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %length.i192, align 4
  %149 = ptrtoint ptr %fi_hdr_len to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %fi_hdr_len, align 4
  %sub.i194 = sub i32 %148, %150
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i194)
  %tobool.not12.i = icmp ult i32 %sub.i194, 2
  br i1 %tobool.not12.i, label %if.end26.calc_fi_checksum.exit_crit_edge, label %for.body.preheader.i196

if.end26.calc_fi_checksum.exit_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_fi_checksum.exit

for.body.preheader.i196:                          ; preds = %if.end26
  %add.ptr.i195 = getelementptr i8, ptr %146, i32 %150
  %div11.i = lshr i32 %sub.i194, 1
  br label %for.body.i200

for.body.i200:                                    ; preds = %for.body.i200.for.body.i200_crit_edge, %for.body.preheader.i196
  %pw.015.i = phi ptr [ %incdec.ptr.i198, %for.body.i200.for.body.i200_crit_edge ], [ %add.ptr.i195, %for.body.preheader.i196 ]
  %len.014.i = phi i32 [ %dec.i, %for.body.i200.for.body.i200_crit_edge ], [ %div11.i, %for.body.preheader.i196 ]
  %cksum.013.i = phi i16 [ %add.i197, %for.body.i200.for.body.i200_crit_edge ], [ 0, %for.body.preheader.i196 ]
  %151 = ptrtoint ptr %pw.015.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %pw.015.i, align 2
  %153 = tail call i16 @llvm.bswap.i16(i16 %152) #11
  %add.i197 = add i16 %153, %cksum.013.i
  %dec.i = add i32 %len.014.i, -1
  %incdec.ptr.i198 = getelementptr i16, ptr %pw.015.i, i32 1
  %tobool.not.i199 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i199, label %for.body.i200.calc_fi_checksum.exit_crit_edge, label %for.body.i200.for.body.i200_crit_edge

for.body.i200.for.body.i200_crit_edge:            ; preds = %for.body.i200
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i200

for.body.i200.calc_fi_checksum.exit_crit_edge:    ; preds = %for.body.i200
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_fi_checksum.exit

calc_fi_checksum.exit:                            ; preds = %for.body.i200.calc_fi_checksum.exit_crit_edge, %if.end26.calc_fi_checksum.exit_crit_edge
  %cksum.0.lcssa.i = phi i16 [ 0, %if.end26.calc_fi_checksum.exit_crit_edge ], [ %add.i197, %for.body.i200.calc_fi_checksum.exit_crit_edge ]
  %checksum = getelementptr inbounds %struct.esas2r_flash_img, ptr %fi, i32 0, i32 5
  %154 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %cksum.0.lcssa.i, ptr %checksum, align 4
  tail call fastcc void @esas2r_disable_heartbeat(ptr noundef %a)
  %task = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 51, i32 5
  %155 = ptrtoint ptr %task to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %task, align 4
  %func = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 51, i32 6
  %156 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %func, align 1
  %comp_typ = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 51, i32 11
  %157 = ptrtoint ptr %comp_typ to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 4, ptr %comp_typ, align 4
  %flsh_addr = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 51, i32 9
  %158 = ptrtoint ptr %flsh_addr to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 7340032, ptr %flsh_addr, align 4
  %length29 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 51, i32 12, i32 2
  %159 = ptrtoint ptr %length29 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 786432, ptr %length29, align 4
  %160 = ptrtoint ptr %cur_offset to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %cur_offset, align 4
  %interrupt_cb = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 51, i32 1
  %161 = ptrtoint ptr %interrupt_cb to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @fw_download_proc, ptr %interrupt_cb, align 4
  %call86 = tail call fastcc zeroext i1 @load_image(ptr noundef %a, ptr noundef %rq)
  br i1 %call86, label %if.end89, label %if.then87

sw.bb32:                                          ; preds = %if.end10
  %pcid.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %162 = ptrtoint ptr %pcid.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pcid.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %163, i32 0, i32 8
  %164 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %device.i, align 2
  %166 = zext i16 %165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %166, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %165, label %sw.default.i [
    i16 44, label %sw.bb32.get_fi_adap_type.exit_crit_edge
    i16 73, label %sw.bb32.sw.bb1.i_crit_edge
    i16 102, label %sw.bb32.sw.bb1.i_crit_edge252
    i16 103, label %sw.bb32.sw.bb1.i_crit_edge253
    i16 104, label %sw.bb32.sw.bb1.i_crit_edge254
  ]

sw.bb32.sw.bb1.i_crit_edge254:                    ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

sw.bb32.sw.bb1.i_crit_edge253:                    ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

sw.bb32.sw.bb1.i_crit_edge252:                    ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

sw.bb32.sw.bb1.i_crit_edge:                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

sw.bb32.get_fi_adap_type.exit_crit_edge:          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_fi_adap_type.exit

sw.bb1.i:                                         ; preds = %sw.bb32.sw.bb1.i_crit_edge, %sw.bb32.sw.bb1.i_crit_edge252, %sw.bb32.sw.bb1.i_crit_edge253, %sw.bb32.sw.bb1.i_crit_edge254
  br label %get_fi_adap_type.exit

sw.default.i:                                     ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_fi_adap_type.exit

get_fi_adap_type.exit:                            ; preds = %sw.default.i, %sw.bb1.i, %sw.bb32.get_fi_adap_type.exit_crit_edge
  %type.0.i = phi i8 [ -1, %sw.default.i ], [ 15, %sw.bb1.i ], [ 11, %sw.bb32.get_fi_adap_type.exit_crit_edge ]
  %adap_typ = getelementptr inbounds %struct.esas2r_flash_img, ptr %fi, i32 0, i32 2
  %167 = ptrtoint ptr %adap_typ to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %type.0.i, ptr %adap_typ, align 2
  %flags34 = getelementptr inbounds %struct.esas2r_flash_img, ptr %fi, i32 0, i32 7
  %168 = ptrtoint ptr %flags34 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %flags34, align 4
  %169 = ptrtoint ptr %num_comps to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %num_comps, align 2
  %num_comps36 = getelementptr inbounds %struct.esas2r_flash_img, ptr %fi, i32 0, i32 8
  %171 = ptrtoint ptr %num_comps36 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %170, ptr %num_comps36, align 2
  %172 = ptrtoint ptr %fi_hdr_len to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %fi_hdr_len, align 4
  %length38 = getelementptr inbounds %struct.esas2r_flash_img, ptr %fi, i32 0, i32 4
  %174 = ptrtoint ptr %length38 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %length38, align 4
  %rel_version = getelementptr inbounds %struct.esas2r_flash_img, ptr %fi, i32 0, i32 9
  %image_type = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 50
  %175 = call ptr @memcpy(ptr %rel_version, ptr %image_type, i32 16)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %170)
  %cmp241.not = icmp eq i16 %170, 0
  br i1 %cmp241.not, label %get_fi_adap_type.exit.for.end_crit_edge, label %for.body.preheader

get_fi_adap_type.exit.for.end_crit_edge:          ; preds = %get_fi_adap_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %get_fi_adap_type.exit
  %cmp_hdr41 = getelementptr inbounds %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %ch.0243 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %cmp_hdr41, %for.body.preheader ]
  %j.0242 = phi i8 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %176 = ptrtoint ptr %ch.0243 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %j.0242, ptr %ch.0243, align 4
  %status47 = getelementptr inbounds %struct.esas2r_component_header, ptr %ch.0243, i32 0, i32 1
  %177 = ptrtoint ptr %status47 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 -1, ptr %status47, align 1
  %length48 = getelementptr inbounds %struct.esas2r_component_header, ptr %ch.0243, i32 0, i32 4
  %178 = ptrtoint ptr %length48 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %length48, align 4
  %version = getelementptr inbounds %struct.esas2r_component_header, ptr %ch.0243, i32 0, i32 3
  %179 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 -1, ptr %version, align 4
  %image_offset = getelementptr inbounds %struct.esas2r_component_header, ptr %ch.0243, i32 0, i32 5
  %180 = ptrtoint ptr %image_offset to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %image_offset, align 4
  %pad = getelementptr inbounds %struct.esas2r_component_header, ptr %ch.0243, i32 0, i32 2
  %181 = ptrtoint ptr %pad to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %pad, align 2
  %arrayidx51 = getelementptr %struct.esas2r_component_header, ptr %ch.0243, i32 0, i32 2, i32 1
  %182 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %arrayidx51, align 1
  %inc = add i8 %j.0242, 1
  %incdec.ptr = getelementptr %struct.esas2r_component_header, ptr %ch.0243, i32 1
  %183 = ptrtoint ptr %num_comps36 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %num_comps36, align 2
  %185 = zext i8 %inc to i16
  %cmp = icmp ugt i16 %184, %185
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %get_fi_adap_type.exit.for.end_crit_edge
  %flash_ver = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 47
  %186 = ptrtoint ptr %flash_ver to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %flash_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp52.not = icmp eq i32 %187, 0
  br i1 %cmp52.not, label %for.end.sw.default83_crit_edge, label %if.then54

for.end.sw.default83_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default83

if.then54:                                        ; preds = %for.end
  %version58 = getelementptr %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10, i32 4, i32 3
  %188 = ptrtoint ptr %version58 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %version58, align 4
  %version61 = getelementptr %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10, i32 5, i32 3
  %189 = ptrtoint ptr %version61 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %187, ptr %version61, align 4
  %version64 = getelementptr %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10, i32 3, i32 3
  %190 = ptrtoint ptr %version64 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %187, ptr %version64, align 4
  %version67 = getelementptr %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10, i32 2, i32 3
  %191 = ptrtoint ptr %version67 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %187, ptr %version67, align 4
  %status70 = getelementptr %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10, i32 4, i32 1
  %192 = ptrtoint ptr %status70 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 1, ptr %status70, align 1
  %status73 = getelementptr %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10, i32 5, i32 1
  %193 = ptrtoint ptr %status73 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 1, ptr %status73, align 1
  %status76 = getelementptr %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10, i32 3, i32 1
  %194 = ptrtoint ptr %status76 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %status76, align 1
  %status79 = getelementptr %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10, i32 2, i32 1
  %195 = ptrtoint ptr %status79 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 1, ptr %status79, align 1
  %196 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %interrupt_cx, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %status.i203 = getelementptr inbounds %struct.esas2r_flash_img, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %status.i203 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %status.i203, align 1
  %201 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %req_stat, align 1
  %conv.i205 = zext i8 %202 to i16
  %driver_error.i206 = getelementptr inbounds %struct.esas2r_flash_img, ptr %199, i32 0, i32 6
  %203 = ptrtoint ptr %driver_error.i206 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %conv.i205, ptr %driver_error.i206, align 2
  %interrupt_cb.i207 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 14
  %204 = ptrtoint ptr %interrupt_cb.i207 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr null, ptr %interrupt_cb.i207, align 8
  store i8 0, ptr %req_stat, align 1
  %scratch.i208 = getelementptr inbounds %struct.esas2r_flash_context, ptr %197, i32 0, i32 3
  %205 = ptrtoint ptr %scratch.i208 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %scratch.i208, align 4
  %207 = call ptr @memset(ptr %206, i32 0, i32 2048)
  %208 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile i32, ptr %flags, align 4
  %210 = and i32 %209, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool.not.i.i210 = icmp eq i32 %210, 0
  br i1 %tobool.not.i.i210, label %land.lhs.true.i.i213, label %if.then54.if.else.i.i219_crit_edge

if.then54.if.else.i.i219_crit_edge:               ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i219

land.lhs.true.i.i213:                             ; preds = %if.then54
  %211 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %flags, align 4
  %213 = and i32 %212, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool3.not.i.i212 = icmp eq i32 %213, 0
  br i1 %tobool3.not.i.i212, label %land.lhs.true4.i.i217, label %land.lhs.true.i.i213.if.else.i.i219_crit_edge

land.lhs.true.i.i213.if.else.i.i219_crit_edge:    ; preds = %land.lhs.true.i.i213
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i219

land.lhs.true4.i.i217:                            ; preds = %land.lhs.true.i.i213
  %nvram.i.i214 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %214 = ptrtoint ptr %nvram.i.i214 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %nvram.i.i214, align 4
  %options2.i.i215 = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %215, i32 0, i32 6
  %216 = ptrtoint ptr %options2.i.i215 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %options2.i.i215, align 1
  %218 = and i8 %217, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool5.not.i.i216 = icmp eq i8 %218, 0
  br i1 %tobool5.not.i.i216, label %land.lhs.true4.i.i217.if.else.i.i219_crit_edge, label %if.then.i.i218

land.lhs.true4.i.i217.if.else.i.i219_crit_edge:   ; preds = %land.lhs.true4.i.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i219

if.then.i.i218:                                   ; preds = %land.lhs.true4.i.i217
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags) #11
  br label %complete_fmapi_req.exit220

if.else.i.i219:                                   ; preds = %land.lhs.true4.i.i217.if.else.i.i219_crit_edge, %land.lhs.true.i.i213.if.else.i.i219_crit_edge, %if.then54.if.else.i.i219_crit_edge
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags) #11
  br label %complete_fmapi_req.exit220

complete_fmapi_req.exit220:                       ; preds = %if.else.i.i219, %if.then.i.i218
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #11
  br label %cleanup

sw.default83:                                     ; preds = %for.end.sw.default83_crit_edge, %if.end10.sw.default83_crit_edge
  %219 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %interrupt_cx, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %220, align 4
  %status.i222 = getelementptr inbounds %struct.esas2r_flash_img, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %status.i222 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 4, ptr %status.i222, align 1
  %224 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %req_stat, align 1
  %conv.i224 = zext i8 %225 to i16
  %driver_error.i225 = getelementptr inbounds %struct.esas2r_flash_img, ptr %222, i32 0, i32 6
  %226 = ptrtoint ptr %driver_error.i225 to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %conv.i224, ptr %driver_error.i225, align 2
  %interrupt_cb.i226 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 14
  %227 = ptrtoint ptr %interrupt_cb.i226 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr null, ptr %interrupt_cb.i226, align 8
  store i8 0, ptr %req_stat, align 1
  %scratch.i227 = getelementptr inbounds %struct.esas2r_flash_context, ptr %220, i32 0, i32 3
  %228 = ptrtoint ptr %scratch.i227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %scratch.i227, align 4
  %230 = call ptr @memset(ptr %229, i32 0, i32 2048)
  %231 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile i32, ptr %flags, align 4
  %233 = and i32 %232, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool.not.i.i229 = icmp eq i32 %233, 0
  br i1 %tobool.not.i.i229, label %land.lhs.true.i.i232, label %sw.default83.if.else.i.i238_crit_edge

sw.default83.if.else.i.i238_crit_edge:            ; preds = %sw.default83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i238

land.lhs.true.i.i232:                             ; preds = %sw.default83
  %234 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %flags, align 4
  %236 = and i32 %235, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool3.not.i.i231 = icmp eq i32 %236, 0
  br i1 %tobool3.not.i.i231, label %land.lhs.true4.i.i236, label %land.lhs.true.i.i232.if.else.i.i238_crit_edge

land.lhs.true.i.i232.if.else.i.i238_crit_edge:    ; preds = %land.lhs.true.i.i232
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i238

land.lhs.true4.i.i236:                            ; preds = %land.lhs.true.i.i232
  %nvram.i.i233 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %237 = ptrtoint ptr %nvram.i.i233 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %nvram.i.i233, align 4
  %options2.i.i234 = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %238, i32 0, i32 6
  %239 = ptrtoint ptr %options2.i.i234 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %options2.i.i234, align 1
  %241 = and i8 %240, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool5.not.i.i235 = icmp eq i8 %241, 0
  br i1 %tobool5.not.i.i235, label %land.lhs.true4.i.i236.if.else.i.i238_crit_edge, label %if.then.i.i237

land.lhs.true4.i.i236.if.else.i.i238_crit_edge:   ; preds = %land.lhs.true4.i.i236
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i238

if.then.i.i237:                                   ; preds = %land.lhs.true4.i.i236
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags) #11
  br label %complete_fmapi_req.exit239

if.else.i.i238:                                   ; preds = %land.lhs.true4.i.i236.if.else.i.i238_crit_edge, %land.lhs.true.i.i232.if.else.i.i238_crit_edge, %sw.default83.if.else.i.i238_crit_edge
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags) #11
  br label %complete_fmapi_req.exit239

complete_fmapi_req.exit239:                       ; preds = %if.else.i.i238, %if.then.i.i237
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #11
  br label %cleanup

if.then87:                                        ; preds = %calc_fi_checksum.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @complete_fmapi_req(ptr noundef %a, ptr noundef %rq, i8 noundef zeroext 1)
  br label %cleanup

if.end89:                                         ; preds = %calc_fi_checksum.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.then87, %complete_fmapi_req.exit239, %complete_fmapi_req.exit220, %if.then14, %complete_fmapi_req.exit190, %complete_fmapi_req.exit, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %complete_fmapi_req.exit190 ], [ false, %complete_fmapi_req.exit239 ], [ false, %complete_fmapi_req.exit220 ], [ true, %if.end89 ], [ false, %if.then87 ], [ false, %if.then14 ], [ false, %complete_fmapi_req.exit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @complete_fmapi_req(ptr noundef %a, ptr nocapture noundef %rq, i8 noundef zeroext %fi_stat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %0 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_cx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %status = getelementptr inbounds %struct.esas2r_flash_img, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %fi_stat, ptr %status, align 1
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %5 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %req_stat, align 1
  %conv = zext i8 %6 to i16
  %driver_error = getelementptr inbounds %struct.esas2r_flash_img, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %driver_error to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %driver_error, align 2
  %interrupt_cb = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 14
  %8 = ptrtoint ptr %interrupt_cb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %interrupt_cb, align 8
  store i8 0, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %fi_stat)
  %cmp.not = icmp eq i8 %fi_stat, 8
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %scratch = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scratch, align 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 2048)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i, align 4
  %14 = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %nvram.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %18 = ptrtoint ptr %nvram.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nvram.i, align 4
  %options2.i = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %options2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %options2.i, align 1
  %22 = and i8 %21, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool5.not.i = icmp eq i8 %22, 0
  br i1 %tobool5.not.i, label %land.lhs.true4.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true4.i.if.else.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags.i) #11
  br label %esas2r_enable_heartbeat.exit

if.else.i:                                        ; preds = %land.lhs.true4.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags.i) #11
  br label %esas2r_enable_heartbeat.exit

esas2r_enable_heartbeat.exit:                     ; preds = %if.else.i, %if.then.i
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags.i) #11
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fix_bios(ptr nocapture noundef readonly %a, ptr nocapture noundef %fi) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %image_offset = getelementptr %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10, i32 2, i32 5
  %0 = ptrtoint ptr %image_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %image_offset, align 4
  %add.ptr = getelementptr i8, ptr %fi, i32 %1
  %header_offset = getelementptr inbounds %struct.esas2r_pc_image, ptr %add.ptr, i32 0, i32 8
  %2 = ptrtoint ptr %header_offset to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %header_offset, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %conv
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  %5 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcid, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %device_id = getelementptr inbounds %struct.esas2r_boot_header, ptr %add.ptr1, i32 0, i32 2
  %10 = ptrtoint ptr %device_id to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %device_id, align 1
  %pnp_offset = getelementptr inbounds %struct.esas2r_pc_image, ptr %add.ptr, i32 0, i32 9
  %11 = ptrtoint ptr %pnp_offset to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %pnp_offset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv3 = zext i16 %13 to i32
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %conv3
  %14 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcid, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %subsystem_vendor, align 4
  %conv6 = zext i16 %17 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 10
  %18 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_device, align 2
  %conv8 = zext i16 %19 to i32
  %shl = shl nuw i32 %conv8, 16
  %or = or i32 %shl, %conv6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx9 = getelementptr i8, ptr %add.ptr4, i32 10
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx9, align 4
  %arrayidx.i = getelementptr i8, ptr %add.ptr4, i32 31
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %arrayidx.i.1 = getelementptr i8, ptr %add.ptr4, i32 30
  %24 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.1, align 1
  %add.i.1 = add i8 %25, %23
  %arrayidx.i.2 = getelementptr i8, ptr %add.ptr4, i32 29
  %26 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.2, align 1
  %add.i.2 = add i8 %27, %add.i.1
  %arrayidx.i.3 = getelementptr i8, ptr %add.ptr4, i32 28
  %28 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.3, align 1
  %add.i.3 = add i8 %29, %add.i.2
  %arrayidx.i.4 = getelementptr i8, ptr %add.ptr4, i32 27
  %30 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.4, align 1
  %add.i.4 = add i8 %31, %add.i.3
  %arrayidx.i.5 = getelementptr i8, ptr %add.ptr4, i32 26
  %32 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.5, align 1
  %add.i.5 = add i8 %33, %add.i.4
  %arrayidx.i.6 = getelementptr i8, ptr %add.ptr4, i32 25
  %34 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.6, align 1
  %add.i.6 = add i8 %35, %add.i.5
  %arrayidx.i.7 = getelementptr i8, ptr %add.ptr4, i32 24
  %36 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.7, align 1
  %add.i.7 = add i8 %37, %add.i.6
  %arrayidx.i.8 = getelementptr i8, ptr %add.ptr4, i32 23
  %38 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.8, align 1
  %add.i.8 = add i8 %39, %add.i.7
  %arrayidx.i.9 = getelementptr i8, ptr %add.ptr4, i32 22
  %40 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.9, align 1
  %add.i.9 = add i8 %41, %add.i.8
  %arrayidx.i.10 = getelementptr i8, ptr %add.ptr4, i32 21
  %42 = ptrtoint ptr %arrayidx.i.10 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.10, align 1
  %add.i.10 = add i8 %43, %add.i.9
  %arrayidx.i.11 = getelementptr i8, ptr %add.ptr4, i32 20
  %44 = ptrtoint ptr %arrayidx.i.11 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i.11, align 1
  %add.i.11 = add i8 %45, %add.i.10
  %arrayidx.i.12 = getelementptr i8, ptr %add.ptr4, i32 19
  %46 = ptrtoint ptr %arrayidx.i.12 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.12, align 1
  %add.i.12 = add i8 %47, %add.i.11
  %arrayidx.i.13 = getelementptr i8, ptr %add.ptr4, i32 18
  %48 = ptrtoint ptr %arrayidx.i.13 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.13, align 1
  %add.i.13 = add i8 %49, %add.i.12
  %arrayidx.i.14 = getelementptr i8, ptr %add.ptr4, i32 17
  %50 = ptrtoint ptr %arrayidx.i.14 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.14, align 1
  %add.i.14 = add i8 %51, %add.i.13
  %arrayidx.i.15 = getelementptr i8, ptr %add.ptr4, i32 16
  %52 = ptrtoint ptr %arrayidx.i.15 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.15, align 1
  %add.i.15 = add i8 %53, %add.i.14
  %arrayidx.i.16 = getelementptr i8, ptr %add.ptr4, i32 15
  %54 = ptrtoint ptr %arrayidx.i.16 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.16, align 1
  %add.i.16 = add i8 %55, %add.i.15
  %arrayidx.i.17 = getelementptr i8, ptr %add.ptr4, i32 14
  %56 = ptrtoint ptr %arrayidx.i.17 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i.17, align 1
  %add.i.17 = add i8 %57, %add.i.16
  %58 = trunc i32 %20 to i8
  %add.i.18 = add i8 %add.i.17, %58
  %59 = lshr i32 %20, 8
  %60 = trunc i32 %59 to i8
  %add.i.19 = add i8 %add.i.18, %60
  %61 = lshr i32 %20, 16
  %62 = trunc i32 %61 to i8
  %add.i.20 = add i8 %add.i.19, %62
  %63 = lshr i32 %20, 24
  %64 = trunc i32 %63 to i8
  %add.i.21 = add i8 %add.i.20, %64
  %arrayidx.i.22 = getelementptr i8, ptr %add.ptr4, i32 9
  %65 = ptrtoint ptr %arrayidx.i.22 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.22, align 1
  %add.i.22 = add i8 %66, %add.i.21
  %arrayidx.i.23 = getelementptr i8, ptr %add.ptr4, i32 8
  %67 = ptrtoint ptr %arrayidx.i.23 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i.23, align 1
  %add.i.23 = add i8 %68, %add.i.22
  %arrayidx.i.24 = getelementptr i8, ptr %add.ptr4, i32 7
  %69 = ptrtoint ptr %arrayidx.i.24 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i.24, align 1
  %add.i.24 = add i8 %70, %add.i.23
  %arrayidx.i.25 = getelementptr i8, ptr %add.ptr4, i32 6
  %71 = ptrtoint ptr %arrayidx.i.25 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i.25, align 1
  %add.i.25 = add i8 %72, %add.i.24
  %arrayidx.i.26 = getelementptr i8, ptr %add.ptr4, i32 5
  %73 = ptrtoint ptr %arrayidx.i.26 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.26, align 1
  %add.i.26 = add i8 %74, %add.i.25
  %arrayidx.i.27 = getelementptr i8, ptr %add.ptr4, i32 4
  %75 = ptrtoint ptr %arrayidx.i.27 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.27, align 1
  %add.i.27 = add i8 %76, %add.i.26
  %arrayidx.i.28 = getelementptr i8, ptr %add.ptr4, i32 3
  %77 = ptrtoint ptr %arrayidx.i.28 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.28, align 1
  %add.i.28 = add i8 %78, %add.i.27
  %arrayidx.i.29 = getelementptr i8, ptr %add.ptr4, i32 2
  %79 = ptrtoint ptr %arrayidx.i.29 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i.29, align 1
  %add.i.29 = add i8 %80, %add.i.28
  %arrayidx.i.30 = getelementptr i8, ptr %add.ptr4, i32 1
  %81 = ptrtoint ptr %arrayidx.i.30 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i.30, align 1
  %add.i.30 = add i8 %82, %add.i.29
  %83 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %add.ptr4, align 1
  %add.i.31 = add i8 %84, %add.i.30
  %sub = sub i8 %66, %add.i.31
  store i8 %sub, ptr %arrayidx.i.22, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %checksum = getelementptr inbounds %struct.esas2r_pc_image, ptr %add.ptr, i32 0, i32 3
  %85 = ptrtoint ptr %checksum to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %checksum, align 1
  %length = getelementptr %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10, i32 2, i32 4
  %87 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not5.i = icmp eq i32 %88, 0
  br i1 %tobool.not5.i, label %if.end.esas2r_calc_byte_cksum.exit40_crit_edge, label %if.end.while.body.i39_crit_edge

if.end.while.body.i39_crit_edge:                  ; preds = %if.end
  br label %while.body.i39

if.end.esas2r_calc_byte_cksum.exit40_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %esas2r_calc_byte_cksum.exit40

while.body.i39:                                   ; preds = %while.body.i39.while.body.i39_crit_edge, %if.end.while.body.i39_crit_edge
  %cksum.07.i33 = phi i8 [ %add.i37, %while.body.i39.while.body.i39_crit_edge ], [ 0, %if.end.while.body.i39_crit_edge ]
  %len.addr.06.i34 = phi i32 [ %dec.i35, %while.body.i39.while.body.i39_crit_edge ], [ %88, %if.end.while.body.i39_crit_edge ]
  %dec.i35 = add i32 %len.addr.06.i34, -1
  %arrayidx.i36 = getelementptr i8, ptr %add.ptr, i32 %dec.i35
  %89 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i36, align 1
  %add.i37 = add i8 %90, %cksum.07.i33
  %tobool.not.i38 = icmp eq i32 %dec.i35, 0
  br i1 %tobool.not.i38, label %while.body.i39.esas2r_calc_byte_cksum.exit40_crit_edge, label %while.body.i39.while.body.i39_crit_edge

while.body.i39.while.body.i39_crit_edge:          ; preds = %while.body.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i39

while.body.i39.esas2r_calc_byte_cksum.exit40_crit_edge: ; preds = %while.body.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %esas2r_calc_byte_cksum.exit40

esas2r_calc_byte_cksum.exit40:                    ; preds = %while.body.i39.esas2r_calc_byte_cksum.exit40_crit_edge, %if.end.esas2r_calc_byte_cksum.exit40_crit_edge
  %cksum.0.lcssa.i = phi i8 [ 0, %if.end.esas2r_calc_byte_cksum.exit40_crit_edge ], [ %add.i37, %while.body.i39.esas2r_calc_byte_cksum.exit40_crit_edge ]
  %sub17 = sub i8 %86, %cksum.0.lcssa.i
  %91 = ptrtoint ptr %checksum to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %sub17, ptr %checksum, align 1
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fix_efi(ptr nocapture noundef readonly %a, ptr nocapture noundef %fi) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10, i32 5, i32 4
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %image_offset = getelementptr %struct.esas2r_flash_img, ptr %fi, i32 0, i32 10, i32 5, i32 5
  %2 = ptrtoint ptr %image_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %image_offset, align 4
  %pcid = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 55
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %len.0 = phi i32 [ %1, %entry ], [ %sub, %while.body.while.cond_crit_edge ]
  %offset.0 = phi i32 [ %3, %entry ], [ %add, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %tobool.not = icmp eq i32 %len.0, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond
  %add.ptr = getelementptr i8, ptr %fi, i32 %offset.0
  %header_offset = getelementptr inbounds %struct.esas2r_efi_image, ptr %add.ptr, i32 0, i32 8
  %4 = ptrtoint ptr %header_offset to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %header_offset, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %conv
  %7 = ptrtoint ptr %pcid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcid, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %device_id = getelementptr inbounds %struct.esas2r_boot_header, ptr %add.ptr1, i32 0, i32 2
  %12 = ptrtoint ptr %device_id to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %device_id, align 1
  %image_length = getelementptr inbounds %struct.esas2r_boot_header, ptr %add.ptr1, i32 0, i32 7
  %13 = ptrtoint ptr %image_length to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %image_length, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv2 = zext i16 %15 to i32
  %mul = shl nuw nsw i32 %conv2, 9
  %cmp = icmp ult i32 %len.0, %mul
  %sub = sub i32 %len.0, %mul
  %add = add i32 %mul, %offset.0
  br i1 %cmp, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_download_proc(ptr noundef %a, ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %0 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_cx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %4 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %entry
  %func = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %func, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp4 = icmp eq i8 %7, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end
  %cmp_len = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %cmp_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %land.lhs.true.if.end32_crit_edge, label %if.then6

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then6:                                         ; preds = %land.lhs.true
  %scratch = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 3
  %curr_len = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %curr_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %curr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not417 = icmp eq i32 %11, 0
  br i1 %tobool10.not417, label %if.then6.for.end_crit_edge, label %for.body.preheader

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.then6
  %comp_typ = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %comp_typ to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %comp_typ, align 4
  %idxprom = zext i8 %13 to i32
  %image_offset = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 %idxprom, i32 5
  %14 = ptrtoint ptr %image_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %image_offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %15
  %length = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 %idxprom, i32 4
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %17
  %idx.neg = sub i32 0, %9
  %add.ptr9 = getelementptr i8, ptr %add.ptr7, i32 %idx.neg
  %18 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scratch, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %q.0420 = phi ptr [ %incdec.ptr12, %for.inc.for.body_crit_edge ], [ %add.ptr9, %for.body.preheader ]
  %p.0419 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %19, %for.body.preheader ]
  %len.0418 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %11, %for.body.preheader ]
  %20 = ptrtoint ptr %p.0419 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %p.0419, align 1
  %22 = ptrtoint ptr %q.0420 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %q.0420, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp14.not = icmp eq i8 %21, %23
  br i1 %cmp14.not, label %for.inc, label %for.body.error_crit_edge

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc:                                          ; preds = %for.body
  %incdec.ptr12 = getelementptr i8, ptr %q.0420, i32 1
  %incdec.ptr = getelementptr i8, ptr %p.0419, i32 1
  %dec = add i32 %len.0418, -1
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then6.for.end_crit_edge
  %sub = sub i32 %9, %11
  %24 = ptrtoint ptr %cmp_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %cmp_len, align 4
  %25 = call i32 @llvm.umin.i32(i32 %sub, i32 2048)
  %26 = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 12, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %26, align 4
  %sgc_offset = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %sgc_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sgc_offset, align 4
  %30 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %scratch, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr30 = getelementptr i8, ptr %29, i32 %sub.ptr.sub
  %cur_offset = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 12, i32 3
  %32 = ptrtoint ptr %cur_offset to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr30, ptr %cur_offset, align 4
  br label %if.end32

if.end32:                                         ; preds = %for.end, %land.lhs.true.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %length34 = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 12, i32 2
  %33 = ptrtoint ptr %length34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp35423 = icmp eq i32 %34, 0
  br i1 %cmp35423, label %while.body.lr.ph, label %if.end32.while.end_crit_edge

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end32
  %comp_typ38 = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 11
  %task = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 5
  %flsh_addr192 = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 9
  %cmp_len194 = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 8
  %sgc_offset197 = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 2
  %scratch198 = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 3
  %sub.ptr.rhs.cast200 = ptrtoint ptr %3 to i32
  %cur_offset204 = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 12, i32 3
  %length44 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 2, i32 4
  %image_offset56 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 2, i32 5
  %length79 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 3, i32 4
  %image_offset95 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 3, i32 5
  %length121 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 5, i32 4
  %image_offset142 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 5, i32 5
  %length168 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 4, i32 4
  %image_offset183 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 4, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end229.while.body_crit_edge, %while.body.lr.ph
  %35 = ptrtoint ptr %comp_typ38 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %comp_typ38, align 4
  %idxprom39 = zext i8 %36 to i32
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %task, align 4
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %38, label %while.body.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb60
    i8 2, label %while.body.no_bios_crit_edge
    i8 3, label %sw.bb99
    i8 4, label %while.body.no_mac_crit_edge
    i8 5, label %sw.bb146
    i8 6, label %while.body.no_efi_crit_edge
    i8 7, label %sw.bb187
    i8 8, label %no_cfg.split.loop.exit426
  ]

while.body.no_efi_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_efi

while.body.no_mac_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_mac

while.body.no_bios_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_bios

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  %40 = ptrtoint ptr %length44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp45 = icmp eq i32 %41, 0
  br i1 %cmp45, label %sw.bb.no_bios_crit_edge, label %if.end48

sw.bb.no_bios_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_bios

if.end48:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %task to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %task, align 4
  %43 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %func, align 1
  %44 = ptrtoint ptr %comp_typ38 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %comp_typ38, align 4
  %45 = ptrtoint ptr %flsh_addr192 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 7340032, ptr %flsh_addr192, align 4
  %46 = ptrtoint ptr %length44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length44, align 4
  %48 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %length34, align 4
  %49 = ptrtoint ptr %sgc_offset197 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sgc_offset197, align 4
  %51 = ptrtoint ptr %image_offset56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %image_offset56, align 4
  %add.ptr57 = getelementptr i8, ptr %50, i32 %52
  br label %sw.epilog.sink.split

sw.bb60:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %task to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %task, align 4
  %54 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %func, align 1
  %55 = ptrtoint ptr %flsh_addr192 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 7340032, ptr %flsh_addr192, align 4
  %length64 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 %idxprom39, i32 4
  %56 = ptrtoint ptr %length64 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %length64, align 4
  %58 = ptrtoint ptr %cmp_len194 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %cmp_len194, align 4
  %59 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2048, ptr %length34, align 4
  %60 = ptrtoint ptr %sgc_offset197 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sgc_offset197, align 4
  %62 = ptrtoint ptr %scratch198 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %scratch198, align 4
  %sub.ptr.lhs.cast70 = ptrtoint ptr %63 to i32
  %sub.ptr.sub72 = sub i32 %sub.ptr.lhs.cast70, %sub.ptr.rhs.cast200
  %add.ptr73 = getelementptr i8, ptr %61, i32 %sub.ptr.sub72
  br label %sw.epilog.sink.split

no_bios:                                          ; preds = %sw.bb.no_bios_crit_edge, %while.body.no_bios_crit_edge
  %64 = phi i32 [ %idxprom39, %while.body.no_bios_crit_edge ], [ 2, %sw.bb.no_bios_crit_edge ]
  %status = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 %64, i32 1
  %65 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %status, align 1
  %66 = ptrtoint ptr %length79 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %length79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp80 = icmp eq i32 %67, 0
  br i1 %cmp80, label %no_bios.no_mac_crit_edge, label %if.end83

no_bios.no_mac_crit_edge:                         ; preds = %no_bios
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_mac

if.end83:                                         ; preds = %no_bios
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %task to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %task, align 4
  %69 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %func, align 1
  %70 = ptrtoint ptr %comp_typ38 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 3, ptr %comp_typ38, align 4
  %71 = ptrtoint ptr %length44 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %length44, align 4
  %add = add i32 %72, 7340032
  %73 = ptrtoint ptr %flsh_addr192 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add, ptr %flsh_addr192, align 4
  %74 = ptrtoint ptr %length79 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %length79, align 4
  %76 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %length34, align 4
  %77 = ptrtoint ptr %sgc_offset197 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sgc_offset197, align 4
  %79 = ptrtoint ptr %image_offset95 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %image_offset95, align 4
  %add.ptr96 = getelementptr i8, ptr %78, i32 %80
  br label %sw.epilog.sink.split

sw.bb99:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %task to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 4, ptr %task, align 4
  %82 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %func, align 1
  %length102 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 %idxprom39, i32 4
  %83 = ptrtoint ptr %length102 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %length102, align 4
  %85 = ptrtoint ptr %flsh_addr192 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flsh_addr192, align 4
  %sub104 = sub i32 %86, %84
  store i32 %sub104, ptr %flsh_addr192, align 4
  %87 = load i32, ptr %length102, align 4
  %88 = ptrtoint ptr %cmp_len194 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %cmp_len194, align 4
  %89 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 2048, ptr %length34, align 4
  %90 = ptrtoint ptr %sgc_offset197 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sgc_offset197, align 4
  %92 = ptrtoint ptr %scratch198 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %scratch198, align 4
  %sub.ptr.lhs.cast111 = ptrtoint ptr %93 to i32
  %sub.ptr.sub113 = sub i32 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast200
  %add.ptr114 = getelementptr i8, ptr %91, i32 %sub.ptr.sub113
  br label %sw.epilog.sink.split

no_mac:                                           ; preds = %no_bios.no_mac_crit_edge, %while.body.no_mac_crit_edge
  %94 = phi i32 [ %idxprom39, %while.body.no_mac_crit_edge ], [ 3, %no_bios.no_mac_crit_edge ]
  %status118 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 %94, i32 1
  %95 = ptrtoint ptr %status118 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %status118, align 1
  %96 = ptrtoint ptr %length121 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %length121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp122 = icmp eq i32 %97, 0
  br i1 %cmp122, label %no_mac.no_efi_crit_edge, label %if.end125

no_mac.no_efi_crit_edge:                          ; preds = %no_mac
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_efi

if.end125:                                        ; preds = %no_mac
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %task to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 5, ptr %task, align 4
  %99 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %func, align 1
  %100 = ptrtoint ptr %comp_typ38 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 5, ptr %comp_typ38, align 4
  %101 = ptrtoint ptr %length44 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %length44, align 4
  %add132 = add i32 %102, 7340032
  %103 = ptrtoint ptr %length79 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %length79, align 4
  %add136 = add i32 %add132, %104
  %105 = ptrtoint ptr %flsh_addr192 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add136, ptr %flsh_addr192, align 4
  %106 = ptrtoint ptr %length121 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %length121, align 4
  %108 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %length34, align 4
  %109 = ptrtoint ptr %sgc_offset197 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sgc_offset197, align 4
  %111 = ptrtoint ptr %image_offset142 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %image_offset142, align 4
  %add.ptr143 = getelementptr i8, ptr %110, i32 %112
  br label %sw.epilog.sink.split

sw.bb146:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %task to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 6, ptr %task, align 4
  %114 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %func, align 1
  %length149 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 %idxprom39, i32 4
  %115 = ptrtoint ptr %length149 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %length149, align 4
  %117 = ptrtoint ptr %flsh_addr192 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flsh_addr192, align 4
  %sub151 = sub i32 %118, %116
  store i32 %sub151, ptr %flsh_addr192, align 4
  %119 = load i32, ptr %length149, align 4
  %120 = ptrtoint ptr %cmp_len194 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %cmp_len194, align 4
  %121 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 2048, ptr %length34, align 4
  %122 = ptrtoint ptr %sgc_offset197 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sgc_offset197, align 4
  %124 = ptrtoint ptr %scratch198 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %scratch198, align 4
  %sub.ptr.lhs.cast158 = ptrtoint ptr %125 to i32
  %sub.ptr.sub160 = sub i32 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast200
  %add.ptr161 = getelementptr i8, ptr %123, i32 %sub.ptr.sub160
  br label %sw.epilog.sink.split

no_efi:                                           ; preds = %no_mac.no_efi_crit_edge, %while.body.no_efi_crit_edge
  %126 = phi i32 [ %idxprom39, %while.body.no_efi_crit_edge ], [ 5, %no_mac.no_efi_crit_edge ]
  %status165 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 %126, i32 1
  %127 = ptrtoint ptr %status165 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %status165, align 1
  %128 = ptrtoint ptr %length168 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %length168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp169 = icmp eq i32 %129, 0
  br i1 %cmp169, label %no_efi.no_cfg_crit_edge, label %if.end172

no_efi.no_cfg_crit_edge:                          ; preds = %no_efi
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_cfg

if.end172:                                        ; preds = %no_efi
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %task to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 7, ptr %task, align 4
  %131 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %func, align 1
  %132 = ptrtoint ptr %comp_typ38 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 4, ptr %comp_typ38, align 4
  %133 = ptrtoint ptr %length168 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %length168, align 4
  %sub177 = sub i32 8126464, %134
  %135 = ptrtoint ptr %flsh_addr192 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %sub177, ptr %flsh_addr192, align 4
  %136 = load i32, ptr %length168, align 4
  %137 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %length34, align 4
  %138 = ptrtoint ptr %sgc_offset197 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %sgc_offset197, align 4
  %140 = ptrtoint ptr %image_offset183 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %image_offset183, align 4
  %add.ptr184 = getelementptr i8, ptr %139, i32 %141
  br label %sw.epilog.sink.split

sw.bb187:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %142 = ptrtoint ptr %task to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 8, ptr %task, align 4
  %143 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %func, align 1
  %length190 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 %idxprom39, i32 4
  %144 = ptrtoint ptr %length190 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %length190, align 4
  %sub191 = sub i32 8126464, %145
  %146 = ptrtoint ptr %flsh_addr192 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %sub191, ptr %flsh_addr192, align 4
  %147 = load i32, ptr %length190, align 4
  %148 = ptrtoint ptr %cmp_len194 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %cmp_len194, align 4
  %149 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 2048, ptr %length34, align 4
  %150 = ptrtoint ptr %sgc_offset197 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %sgc_offset197, align 4
  %152 = ptrtoint ptr %scratch198 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %scratch198, align 4
  %sub.ptr.lhs.cast199 = ptrtoint ptr %153 to i32
  %sub.ptr.sub201 = sub i32 %sub.ptr.lhs.cast199, %sub.ptr.rhs.cast200
  %add.ptr202 = getelementptr i8, ptr %151, i32 %sub.ptr.sub201
  br label %sw.epilog.sink.split

no_cfg.split.loop.exit426:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %idxprom39.le = zext i8 %36 to i32
  br label %no_cfg

no_cfg:                                           ; preds = %no_cfg.split.loop.exit426, %no_efi.no_cfg_crit_edge
  %154 = phi i32 [ %idxprom39.le, %no_cfg.split.loop.exit426 ], [ 4, %no_efi.no_cfg_crit_edge ]
  %status206 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 %154, i32 1
  %155 = ptrtoint ptr %status206 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %status206, align 1
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %156 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %flags, align 4
  %158 = and i32 %157, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool207.not = icmp eq i32 %158, 0
  br i1 %tobool207.not, label %no_cfg.if.end209_crit_edge, label %if.then208

no_cfg.if.end209_crit_edge:                       ; preds = %no_cfg
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end209

if.then208:                                       ; preds = %no_cfg
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags) #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #11
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags) #11
  br label %if.end209

if.end209:                                        ; preds = %if.then208, %no_cfg.if.end209_crit_edge
  %version = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 2, i32 3
  %159 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %version, align 4
  %flash_ver = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 47
  %161 = ptrtoint ptr %flash_ver to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %flash_ver, align 4
  %shr.i393 = lshr i32 %160, 16
  %conv10.i = and i32 %shr.i393, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10.i)
  %cmp.i = icmp eq i32 %conv10.i, 0
  br i1 %cmp.i, label %if.end209.if.then.i_crit_edge, label %lor.lhs.false.i

if.end209.if.then.i_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end209
  %162 = lshr i32 %160, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %160)
  %cmp13.i = icmp ult i32 %160, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %conv10.i)
  %cmp17.i = icmp ugt i32 %conv10.i, 31
  %or.cond.i = select i1 %cmp13.i, i1 true, i1 %cmp17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 218103807, i32 %160)
  %cmp21.i = icmp ugt i32 %160, 218103807
  %or.cond51.i = or i1 %cmp21.i, %or.cond.i
  br i1 %or.cond51.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false23.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false23.i:                                ; preds = %lor.lhs.false.i
  %conv24.i = and i32 %160, 65535
  %163 = add nsw i32 %conv24.i, -10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7994, i32 %163)
  %164 = icmp ult i32 %163, -7994
  br i1 %164, label %lor.lhs.false23.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false23.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false23.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end209.if.then.i_crit_edge
  %flash_rev.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 48
  %165 = call ptr @memcpy(ptr %flash_rev.i, ptr @.str, i32 10)
  %166 = ptrtoint ptr %flash_ver to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %flash_ver, align 4
  br label %esas2r_print_flash_rev.exit

if.end.i:                                         ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #13
  %flash_rev32.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 48
  %call37.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %flash_rev32.i, ptr noundef nonnull @.str.1, i32 noundef %162, i32 noundef %conv10.i, i32 noundef %conv24.i) #11
  br label %esas2r_print_flash_rev.exit

esas2r_print_flash_rev.exit:                      ; preds = %if.end.i, %if.then.i
  %image_type = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 50
  %rel_version = getelementptr inbounds %struct.esas2r_flash_img, ptr %3, i32 0, i32 9
  %167 = call ptr @memcpy(ptr %image_type, ptr %rel_version, i32 16)
  %168 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %interrupt_cx, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %status.i = getelementptr inbounds %struct.esas2r_flash_img, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %status.i, align 1
  %173 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %req_stat, align 1
  %conv.i = zext i8 %174 to i16
  %driver_error.i = getelementptr inbounds %struct.esas2r_flash_img, ptr %171, i32 0, i32 6
  %175 = ptrtoint ptr %driver_error.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv.i, ptr %driver_error.i, align 2
  %interrupt_cb.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 14
  %176 = ptrtoint ptr %interrupt_cb.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %interrupt_cb.i, align 8
  store i8 0, ptr %req_stat, align 1
  %scratch.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %169, i32 0, i32 3
  %177 = ptrtoint ptr %scratch.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %scratch.i, align 4
  %179 = call ptr @memset(ptr %178, i32 0, i32 2048)
  %180 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %flags, align 4
  %182 = and i32 %181, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.i.i = icmp eq i32 %182, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %esas2r_print_flash_rev.exit.if.else.i.i_crit_edge

esas2r_print_flash_rev.exit.if.else.i.i_crit_edge: ; preds = %esas2r_print_flash_rev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %esas2r_print_flash_rev.exit
  %183 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %flags, align 4
  %185 = and i32 %184, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool3.not.i.i = icmp eq i32 %185, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true4.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %nvram.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %186 = ptrtoint ptr %nvram.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %nvram.i.i, align 4
  %options2.i.i = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %187, i32 0, i32 6
  %188 = ptrtoint ptr %options2.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %options2.i.i, align 1
  %190 = and i8 %189, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool5.not.i.i = icmp eq i8 %190, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true4.i.i.if.else.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.if.else.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags) #11
  br label %cleanup.sink.split

if.else.i.i:                                      ; preds = %land.lhs.true4.i.i.if.else.i.i_crit_edge, %land.lhs.true.i.i.if.else.i.i_crit_edge, %esas2r_print_flash_rev.exit.if.else.i.i_crit_edge
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags) #11
  br label %cleanup.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb187, %if.end172, %sw.bb146, %if.end125, %sw.bb99, %if.end83, %sw.bb60, %if.end48
  %add.ptr202.sink = phi ptr [ %add.ptr202, %sw.bb187 ], [ %add.ptr184, %if.end172 ], [ %add.ptr161, %sw.bb146 ], [ %add.ptr143, %if.end125 ], [ %add.ptr114, %sw.bb99 ], [ %add.ptr96, %if.end83 ], [ %add.ptr73, %sw.bb60 ], [ %add.ptr57, %if.end48 ]
  %191 = ptrtoint ptr %cur_offset204 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %add.ptr202.sink, ptr %cur_offset204, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %while.body.sw.epilog_crit_edge
  %192 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %func, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %193)
  %cmp217 = icmp eq i8 %193, 1
  %194 = ptrtoint ptr %length34 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %length34, align 4
  br i1 %cmp217, label %land.lhs.true219, label %sw.epilog.if.end229_crit_edge

sw.epilog.if.end229_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229

land.lhs.true219:                                 ; preds = %sw.epilog
  %196 = ptrtoint ptr %cmp_len194 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cmp_len194, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %197)
  %cmp223 = icmp ugt i32 %195, %197
  br i1 %cmp223, label %if.then225, label %land.lhs.true219.if.end229_crit_edge

land.lhs.true219.if.end229_crit_edge:             ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229

if.then225:                                       ; preds = %land.lhs.true219
  call void @__sanitizer_cov_trace_pc() #13
  %198 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %length34, align 4
  br label %if.end229

if.end229:                                        ; preds = %if.then225, %land.lhs.true219.if.end229_crit_edge, %sw.epilog.if.end229_crit_edge
  %199 = phi i32 [ %197, %if.then225 ], [ %195, %land.lhs.true219.if.end229_crit_edge ], [ %195, %sw.epilog.if.end229_crit_edge ]
  %cmp35 = icmp eq i32 %199, 0
  br i1 %cmp35, label %if.end229.while.body_crit_edge, label %if.end229.while.end_crit_edge

if.end229.while.end_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end229.while.body_crit_edge:                   ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end229.while.end_crit_edge, %if.end32.while.end_crit_edge
  %call230 = tail call fastcc zeroext i1 @load_image(ptr noundef %a, ptr noundef %rq)
  br i1 %call230, label %while.end.cleanup_crit_edge, label %while.end.error_crit_edge

while.end.error_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

error:                                            ; preds = %while.end.error_crit_edge, %for.body.error_crit_edge, %entry.error_crit_edge
  %comp_typ232 = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 11
  %200 = ptrtoint ptr %comp_typ232 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %comp_typ232, align 4
  %num_comps = getelementptr inbounds %struct.esas2r_flash_img, ptr %3, i32 0, i32 8
  %202 = ptrtoint ptr %num_comps to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %num_comps, align 2
  %204 = zext i8 %201 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %203, i16 %204)
  %cmp235 = icmp ugt i16 %203, %204
  br i1 %cmp235, label %if.then237, label %error.if.end243_crit_edge

error.if.end243_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243

if.then237:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  %conv233 = zext i8 %201 to i32
  %status242 = getelementptr %struct.esas2r_flash_img, ptr %3, i32 0, i32 10, i32 %conv233, i32 1
  %205 = ptrtoint ptr %status242 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 0, ptr %status242, align 1
  br label %if.end243

if.end243:                                        ; preds = %if.then237, %error.if.end243_crit_edge
  %206 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %interrupt_cx, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %207, align 4
  %status.i398 = getelementptr inbounds %struct.esas2r_flash_img, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %status.i398 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 1, ptr %status.i398, align 1
  %211 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %req_stat, align 1
  %conv.i400 = zext i8 %212 to i16
  %driver_error.i401 = getelementptr inbounds %struct.esas2r_flash_img, ptr %209, i32 0, i32 6
  %213 = ptrtoint ptr %driver_error.i401 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %conv.i400, ptr %driver_error.i401, align 2
  %interrupt_cb.i402 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 14
  %214 = ptrtoint ptr %interrupt_cb.i402 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr null, ptr %interrupt_cb.i402, align 8
  store i8 0, ptr %req_stat, align 1
  %scratch.i403 = getelementptr inbounds %struct.esas2r_flash_context, ptr %207, i32 0, i32 3
  %215 = ptrtoint ptr %scratch.i403 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %scratch.i403, align 4
  %217 = call ptr @memset(ptr %216, i32 0, i32 2048)
  %flags.i.i405 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %218 = ptrtoint ptr %flags.i.i405 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load volatile i32, ptr %flags.i.i405, align 4
  %220 = and i32 %219, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.not.i.i406 = icmp eq i32 %220, 0
  br i1 %tobool.not.i.i406, label %land.lhs.true.i.i409, label %if.end243.if.else.i.i415_crit_edge

if.end243.if.else.i.i415_crit_edge:               ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i415

land.lhs.true.i.i409:                             ; preds = %if.end243
  %221 = ptrtoint ptr %flags.i.i405 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load volatile i32, ptr %flags.i.i405, align 4
  %223 = and i32 %222, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool3.not.i.i408 = icmp eq i32 %223, 0
  br i1 %tobool3.not.i.i408, label %land.lhs.true4.i.i413, label %land.lhs.true.i.i409.if.else.i.i415_crit_edge

land.lhs.true.i.i409.if.else.i.i415_crit_edge:    ; preds = %land.lhs.true.i.i409
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i415

land.lhs.true4.i.i413:                            ; preds = %land.lhs.true.i.i409
  %nvram.i.i410 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %224 = ptrtoint ptr %nvram.i.i410 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %nvram.i.i410, align 4
  %options2.i.i411 = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %225, i32 0, i32 6
  %226 = ptrtoint ptr %options2.i.i411 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %options2.i.i411, align 1
  %228 = and i8 %227, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool5.not.i.i412 = icmp eq i8 %228, 0
  br i1 %tobool5.not.i.i412, label %land.lhs.true4.i.i413.if.else.i.i415_crit_edge, label %if.then.i.i414

land.lhs.true4.i.i413.if.else.i.i415_crit_edge:   ; preds = %land.lhs.true4.i.i413
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i415

if.then.i.i414:                                   ; preds = %land.lhs.true4.i.i413
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 17, ptr noundef %flags.i.i405) #11
  br label %cleanup.sink.split

if.else.i.i415:                                   ; preds = %land.lhs.true4.i.i413.if.else.i.i415_crit_edge, %land.lhs.true.i.i409.if.else.i.i415_crit_edge, %if.end243.if.else.i.i415_crit_edge
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags.i.i405) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.i.i415, %if.then.i.i414, %if.else.i.i, %if.then.i.i
  %flags.i.i405.sink = phi ptr [ %flags, %if.then.i.i ], [ %flags, %if.else.i.i ], [ %flags.i.i405, %if.then.i.i414 ], [ %flags.i.i405, %if.else.i.i415 ]
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags.i.i405.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @load_image(ptr noundef %a, ptr noundef %rq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %0 = ptrtoint ptr %req_stat to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -2, ptr %req_stat, align 1
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  %interrupt_cx.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %4 = ptrtoint ptr %interrupt_cx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt_cx.i, align 4
  %sgc1.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %5, i32 0, i32 12
  %func.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %func.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %func.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  %cur_offset.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %5, i32 0, i32 12, i32 3
  %8 = ptrtoint ptr %cur_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_offset.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then3.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.then.i
  %length.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %5, i32 0, i32 12, i32 2
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not6.i.i = icmp eq i32 %11, 0
  %12 = ptrtoint ptr %9 to i32
  %and7.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %cmp8.i.i = icmp eq i32 %and7.i.i, 0
  %or.cond9.i.i = or i1 %cmp8.i.i, %tobool.not6.i.i
  br i1 %or.cond9.i.i, label %if.then3.i.while.cond3.preheader.i.i_crit_edge, label %if.end.i.i

if.then3.i.while.cond3.preheader.i.i_crit_edge:   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond3.preheader.i.i

while.cond3.preheader.i.i:                        ; preds = %if.end.i.i.3, %if.end.i.i.2.while.cond3.preheader.i.i_crit_edge, %if.end.i.i.1.while.cond3.preheader.i.i_crit_edge, %if.end.i.i.while.cond3.preheader.i.i_crit_edge, %if.then3.i.while.cond3.preheader.i.i_crit_edge
  %cksum.sroa.13.0.lcssa.i.i = phi i8 [ 0, %if.then3.i.while.cond3.preheader.i.i_crit_edge ], [ %14, %if.end.i.i.while.cond3.preheader.i.i_crit_edge ], [ %xor5.i.i.1, %if.end.i.i.1.while.cond3.preheader.i.i_crit_edge ], [ %xor5.i.i.2, %if.end.i.i.2.while.cond3.preheader.i.i_crit_edge ], [ %xor5.i.i.3, %if.end.i.i.3 ]
  %len.addr.0.lcssa.i.i = phi i32 [ %11, %if.then3.i.while.cond3.preheader.i.i_crit_edge ], [ %dec.i.i, %if.end.i.i.while.cond3.preheader.i.i_crit_edge ], [ %dec.i.i.1, %if.end.i.i.1.while.cond3.preheader.i.i_crit_edge ], [ %dec.i.i.2, %if.end.i.i.2.while.cond3.preheader.i.i_crit_edge ], [ %dec.i.i.3, %if.end.i.i.3 ]
  %addr.addr.0.lcssa.i.i = phi ptr [ %9, %if.then3.i.while.cond3.preheader.i.i_crit_edge ], [ %incdec.ptr.i.i, %if.end.i.i.while.cond3.preheader.i.i_crit_edge ], [ %incdec.ptr.i.i.1, %if.end.i.i.1.while.cond3.preheader.i.i_crit_edge ], [ %incdec.ptr.i.i.2, %if.end.i.i.2.while.cond3.preheader.i.i_crit_edge ], [ %incdec.ptr.i.i.3, %if.end.i.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.0.lcssa.i.i)
  %cmp415.i.i = icmp ugt i32 %len.addr.0.lcssa.i.i, 3
  br i1 %cmp415.i.i, label %while.cond3.preheader.i.i.while.body6.i.i_crit_edge, label %while.cond3.preheader.i.i.while.cond9.preheader.i.i_crit_edge

while.cond3.preheader.i.i.while.cond9.preheader.i.i_crit_edge: ; preds = %while.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond9.preheader.i.i

while.cond3.preheader.i.i.while.body6.i.i_crit_edge: ; preds = %while.cond3.preheader.i.i
  br label %while.body6.i.i

if.end.i.i:                                       ; preds = %if.then3.i
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %9, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %9, i32 1
  %dec.i.i = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  %15 = ptrtoint ptr %incdec.ptr.i.i to i32
  %and.i.i = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.while.cond3.preheader.i.i_crit_edge, label %if.end.i.i.1

if.end.i.i.while.cond3.preheader.i.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond3.preheader.i.i

if.end.i.i.1:                                     ; preds = %if.end.i.i
  %16 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.i.i, align 1
  %xor5.i.i.1 = xor i8 %17, %14
  %incdec.ptr.i.i.1 = getelementptr i8, ptr %9, i32 2
  %dec.i.i.1 = add i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.1)
  %tobool.not.i.i.1 = icmp eq i32 %dec.i.i.1, 0
  %18 = ptrtoint ptr %incdec.ptr.i.i.1 to i32
  %and.i.i.1 = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.1)
  %cmp.i.i.1 = icmp eq i32 %and.i.i.1, 0
  %or.cond.i.i.1 = or i1 %tobool.not.i.i.1, %cmp.i.i.1
  br i1 %or.cond.i.i.1, label %if.end.i.i.1.while.cond3.preheader.i.i_crit_edge, label %if.end.i.i.2

if.end.i.i.1.while.cond3.preheader.i.i_crit_edge: ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond3.preheader.i.i

if.end.i.i.2:                                     ; preds = %if.end.i.i.1
  %19 = ptrtoint ptr %incdec.ptr.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr.i.i.1, align 1
  %xor5.i.i.2 = xor i8 %20, %xor5.i.i.1
  %incdec.ptr.i.i.2 = getelementptr i8, ptr %9, i32 3
  %dec.i.i.2 = add i32 %11, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.2)
  %tobool.not.i.i.2 = icmp eq i32 %dec.i.i.2, 0
  %21 = ptrtoint ptr %incdec.ptr.i.i.2 to i32
  %and.i.i.2 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.2)
  %cmp.i.i.2 = icmp eq i32 %and.i.i.2, 0
  %or.cond.i.i.2 = or i1 %tobool.not.i.i.2, %cmp.i.i.2
  br i1 %or.cond.i.i.2, label %if.end.i.i.2.while.cond3.preheader.i.i_crit_edge, label %if.end.i.i.3

if.end.i.i.2.while.cond3.preheader.i.i_crit_edge: ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond3.preheader.i.i

if.end.i.i.3:                                     ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %incdec.ptr.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.i.i.2, align 1
  %xor5.i.i.3 = xor i8 %23, %xor5.i.i.2
  %incdec.ptr.i.i.3 = getelementptr i8, ptr %9, i32 4
  %dec.i.i.3 = add i32 %11, -4
  br label %while.cond3.preheader.i.i

while.cond3.while.cond9.preheader_crit_edge.i.i:  ; preds = %while.body6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cksum.sroa.13.0.extract.trunc95.i.i.le = trunc i32 %xor7.i.i to i8
  %cksum.sroa.0.0.extract.trunc50.le.i.i = trunc i32 %cksum.sroa.0.0.extract.shift49.i.i to i8
  %cksum.sroa.11.0.extract.trunc66.le.i.i = trunc i32 %cksum.sroa.11.0.extract.shift65.i.i to i8
  %cksum.sroa.12.0.extract.trunc82.le.i.i = trunc i32 %cksum.sroa.12.0.extract.shift81.i.i to i8
  br label %while.cond9.preheader.i.i

while.cond9.preheader.i.i:                        ; preds = %while.cond3.while.cond9.preheader_crit_edge.i.i, %while.cond3.preheader.i.i.while.cond9.preheader.i.i_crit_edge
  %cksum.sroa.13.1.lcssa.i.i = phi i8 [ %cksum.sroa.13.0.extract.trunc95.i.i.le, %while.cond3.while.cond9.preheader_crit_edge.i.i ], [ %cksum.sroa.13.0.lcssa.i.i, %while.cond3.preheader.i.i.while.cond9.preheader.i.i_crit_edge ]
  %cksum.sroa.12.1.lcssa.i.i = phi i8 [ %cksum.sroa.12.0.extract.trunc82.le.i.i, %while.cond3.while.cond9.preheader_crit_edge.i.i ], [ 0, %while.cond3.preheader.i.i.while.cond9.preheader.i.i_crit_edge ]
  %cksum.sroa.11.1.lcssa.i.i = phi i8 [ %cksum.sroa.11.0.extract.trunc66.le.i.i, %while.cond3.while.cond9.preheader_crit_edge.i.i ], [ 0, %while.cond3.preheader.i.i.while.cond9.preheader.i.i_crit_edge ]
  %cksum.sroa.0.1.lcssa.i.i = phi i8 [ %cksum.sroa.0.0.extract.trunc50.le.i.i, %while.cond3.while.cond9.preheader_crit_edge.i.i ], [ 0, %while.cond3.preheader.i.i.while.cond9.preheader.i.i_crit_edge ]
  %len.addr.1.lcssa.i.i = phi i32 [ %sub.i.i, %while.cond3.while.cond9.preheader_crit_edge.i.i ], [ %len.addr.0.lcssa.i.i, %while.cond3.preheader.i.i.while.cond9.preheader.i.i_crit_edge ]
  %addr.addr.1.lcssa.i.i = phi ptr [ %add.ptr.i.i, %while.cond3.while.cond9.preheader_crit_edge.i.i ], [ %addr.addr.0.lcssa.i.i, %while.cond3.preheader.i.i.while.cond9.preheader.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.lcssa.i.i)
  %tobool11.not28.i.i = icmp eq i32 %len.addr.1.lcssa.i.i, 0
  br i1 %tobool11.not28.i.i, label %while.cond9.preheader.i.i.esas2r_calc_byte_xor_cksum.exit.i_crit_edge, label %while.cond9.preheader.i.i.while.body12.i.i_crit_edge

while.cond9.preheader.i.i.while.body12.i.i_crit_edge: ; preds = %while.cond9.preheader.i.i
  br label %while.body12.i.i

while.cond9.preheader.i.i.esas2r_calc_byte_xor_cksum.exit.i_crit_edge: ; preds = %while.cond9.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %esas2r_calc_byte_xor_cksum.exit.i

while.body6.i.i:                                  ; preds = %while.body6.i.i.while.body6.i.i_crit_edge, %while.cond3.preheader.i.i.while.body6.i.i_crit_edge
  %addr.addr.121.i.i = phi ptr [ %add.ptr.i.i, %while.body6.i.i.while.body6.i.i_crit_edge ], [ %addr.addr.0.lcssa.i.i, %while.cond3.preheader.i.i.while.body6.i.i_crit_edge ]
  %len.addr.120.i.i = phi i32 [ %sub.i.i, %while.body6.i.i.while.body6.i.i_crit_edge ], [ %len.addr.0.lcssa.i.i, %while.cond3.preheader.i.i.while.body6.i.i_crit_edge ]
  %cksum.sroa.0.119.i.i = phi i32 [ %cksum.sroa.0.0.extract.shift49.i.i, %while.body6.i.i.while.body6.i.i_crit_edge ], [ 0, %while.cond3.preheader.i.i.while.body6.i.i_crit_edge ]
  %cksum.sroa.11.118.i.i = phi i32 [ %cksum.sroa.11.0.extract.shift65.i.i, %while.body6.i.i.while.body6.i.i_crit_edge ], [ 0, %while.cond3.preheader.i.i.while.body6.i.i_crit_edge ]
  %cksum.sroa.12.117.i.i = phi i32 [ %cksum.sroa.12.0.extract.shift81.i.i, %while.body6.i.i.while.body6.i.i_crit_edge ], [ 0, %while.cond3.preheader.i.i.while.body6.i.i_crit_edge ]
  %cksum.sroa.13.116.i.i = phi i8 [ %cksum.sroa.13.0.extract.trunc95.i.i, %while.body6.i.i.while.body6.i.i_crit_edge ], [ %cksum.sroa.13.0.lcssa.i.i, %while.cond3.preheader.i.i.while.body6.i.i_crit_edge ]
  %cksum.sroa.13.0.insert.ext92.i.i = zext i8 %cksum.sroa.13.116.i.i to i32
  %cksum.sroa.12.0.insert.ext77.i.i = shl nuw i32 %cksum.sroa.12.117.i.i, 8
  %cksum.sroa.12.0.insert.shift78.i.i = and i32 %cksum.sroa.12.0.insert.ext77.i.i, 65280
  %cksum.sroa.11.0.insert.ext61.i.i = shl nuw i32 %cksum.sroa.11.118.i.i, 16
  %cksum.sroa.11.0.insert.shift62.i.i = and i32 %cksum.sroa.11.0.insert.ext61.i.i, 16711680
  %cksum.sroa.0.0.insert.shift46.i.i = shl nuw i32 %cksum.sroa.0.119.i.i, 24
  %cksum.sroa.11.0.insert.insert64.i.i = or i32 %cksum.sroa.11.0.insert.shift62.i.i, %cksum.sroa.0.0.insert.shift46.i.i
  %cksum.sroa.12.0.insert.insert80.i.i = or i32 %cksum.sroa.11.0.insert.insert64.i.i, %cksum.sroa.13.0.insert.ext92.i.i
  %cksum.sroa.0.0.insert.insert48.i.i = or i32 %cksum.sroa.12.0.insert.insert80.i.i, %cksum.sroa.12.0.insert.shift78.i.i
  %24 = ptrtoint ptr %addr.addr.121.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.addr.121.i.i, align 4
  %xor7.i.i = xor i32 %cksum.sroa.0.0.insert.insert48.i.i, %25
  %cksum.sroa.0.0.extract.shift49.i.i = lshr i32 %xor7.i.i, 24
  %cksum.sroa.11.0.extract.shift65.i.i = lshr i32 %xor7.i.i, 16
  %cksum.sroa.12.0.extract.shift81.i.i = lshr i32 %xor7.i.i, 8
  %cksum.sroa.13.0.extract.trunc95.i.i = trunc i32 %xor7.i.i to i8
  %add.ptr.i.i = getelementptr i8, ptr %addr.addr.121.i.i, i32 4
  %sub.i.i = add i32 %len.addr.120.i.i, -4
  %cmp4.i.i = icmp ugt i32 %sub.i.i, 3
  br i1 %cmp4.i.i, label %while.body6.i.i.while.body6.i.i_crit_edge, label %while.cond3.while.cond9.preheader_crit_edge.i.i

while.body6.i.i.while.body6.i.i_crit_edge:        ; preds = %while.body6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body6.i.i

while.body12.i.i:                                 ; preds = %while.body12.i.i.while.body12.i.i_crit_edge, %while.cond9.preheader.i.i.while.body12.i.i_crit_edge
  %addr.addr.231.i.i = phi ptr [ %incdec.ptr15.i.i, %while.body12.i.i.while.body12.i.i_crit_edge ], [ %addr.addr.1.lcssa.i.i, %while.cond9.preheader.i.i.while.body12.i.i_crit_edge ]
  %len.addr.230.i.i = phi i32 [ %dec10.i.i, %while.body12.i.i.while.body12.i.i_crit_edge ], [ %len.addr.1.lcssa.i.i, %while.cond9.preheader.i.i.while.body12.i.i_crit_edge ]
  %cksum.sroa.13.229.i.i = phi i8 [ %xor144.i.i, %while.body12.i.i.while.body12.i.i_crit_edge ], [ %cksum.sroa.13.1.lcssa.i.i, %while.cond9.preheader.i.i.while.body12.i.i_crit_edge ]
  %dec10.i.i = add i32 %len.addr.230.i.i, -1
  %26 = ptrtoint ptr %addr.addr.231.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr.addr.231.i.i, align 1
  %xor144.i.i = xor i8 %27, %cksum.sroa.13.229.i.i
  %incdec.ptr15.i.i = getelementptr i8, ptr %addr.addr.231.i.i, i32 1
  %tobool11.not.i.i = icmp eq i32 %dec10.i.i, 0
  br i1 %tobool11.not.i.i, label %while.body12.i.i.esas2r_calc_byte_xor_cksum.exit.i_crit_edge, label %while.body12.i.i.while.body12.i.i_crit_edge

while.body12.i.i.while.body12.i.i_crit_edge:      ; preds = %while.body12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body12.i.i

while.body12.i.i.esas2r_calc_byte_xor_cksum.exit.i_crit_edge: ; preds = %while.body12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %esas2r_calc_byte_xor_cksum.exit.i

esas2r_calc_byte_xor_cksum.exit.i:                ; preds = %while.body12.i.i.esas2r_calc_byte_xor_cksum.exit.i_crit_edge, %while.cond9.preheader.i.i.esas2r_calc_byte_xor_cksum.exit.i_crit_edge
  %cksum.sroa.13.2.lcssa.i.i = phi i8 [ %cksum.sroa.13.1.lcssa.i.i, %while.cond9.preheader.i.i.esas2r_calc_byte_xor_cksum.exit.i_crit_edge ], [ %xor144.i.i, %while.body12.i.i.esas2r_calc_byte_xor_cksum.exit.i_crit_edge ]
  %xor201.i.i = xor i8 %cksum.sroa.11.1.lcssa.i.i, %cksum.sroa.12.1.lcssa.i.i
  %xor232.i.i = xor i8 %xor201.i.i, %cksum.sroa.0.1.lcssa.i.i
  %xor263.i.i = xor i8 %xor232.i.i, %cksum.sroa.13.2.lcssa.i.i
  br label %if.end7.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %interrupt_cb5.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %5, i32 0, i32 1
  %28 = ptrtoint ptr %interrupt_cb5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %interrupt_cb5.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %esas2r_calc_byte_xor_cksum.exit.i, %if.then.i.if.end7.i_crit_edge
  %.sink.i = phi ptr [ %29, %if.else.i ], [ @esas2r_fmapi_callback, %esas2r_calc_byte_xor_cksum.exit.i ], [ @esas2r_fmapi_callback, %if.then.i.if.end7.i_crit_edge ]
  %cksum.1.i = phi i8 [ 0, %if.else.i ], [ %xor263.i.i, %esas2r_calc_byte_xor_cksum.exit.i ], [ 0, %if.then.i.if.end7.i_crit_edge ]
  %interrupt_cb6.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 14
  %30 = ptrtoint ptr %interrupt_cb6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.sink.i, ptr %interrupt_cb6.i, align 8
  %31 = ptrtoint ptr %func.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %func.i, align 1
  %flsh_addr.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %5, i32 0, i32 9
  %33 = ptrtoint ptr %flsh_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flsh_addr.i, align 4
  %length9.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %5, i32 0, i32 12, i32 2
  %35 = ptrtoint ptr %length9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length9.i, align 4
  tail call void @esas2r_build_flash_req(ptr noundef %a, ptr noundef %rq, i8 noundef zeroext %32, i8 noundef zeroext %cksum.1.i, i32 noundef %34, i32 noundef %36) #11
  %sg_table_head.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6
  %37 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %sg_table_head.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %38, %sg_table_head.i.i
  br i1 %cmp.i.not.i.i, label %if.end7.i.esas2r_rq_free_sg_lists.exit.i_crit_edge, label %do.body1.i.i

if.end7.i.esas2r_rq_free_sg_lists.exit.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %esas2r_rq_free_sg_lists.exit.i

do.body1.i.i:                                     ; preds = %if.end7.i
  %sg_list_lock.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 13
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sg_list_lock.i.i) #11
  %39 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %sg_table_head.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %40, %sg_table_head.i.i
  br i1 %cmp.i.not.i.i.i, label %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %free_sg_list_head.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16
  %prev.i.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6, i32 1
  %43 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %40, ptr %42, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %free_sg_list_head.i.i, ptr %44, align 4
  store ptr %44, ptr %prev.i.i.i, align 4
  %48 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %sg_table_head.i.i, ptr %sg_table_head.i.i, align 4
  store ptr %sg_table_head.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sg_list_lock.i.i, i32 noundef %call3.i.i) #11
  br label %esas2r_rq_free_sg_lists.exit.i

esas2r_rq_free_sg_lists.exit.i:                   ; preds = %list_splice_tail_init.exit.i.i, %if.end7.i.esas2r_rq_free_sg_lists.exit.i_crit_edge
  %49 = ptrtoint ptr %length9.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length9.i, align 4
  %curr_len.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %5, i32 0, i32 10
  %51 = ptrtoint ptr %curr_len.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %curr_len.i, align 4
  %cur_offset12.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %5, i32 0, i32 12, i32 3
  %52 = ptrtoint ptr %cur_offset12.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur_offset12.i, align 4
  %tobool13.not.i = icmp eq ptr %53, null
  br i1 %tobool13.not.i, label %if.else18.i, label %if.then14.i

if.then14.i:                                      ; preds = %esas2r_rq_free_sg_lists.exit.i
  %vrq.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %54 = ptrtoint ptr %vrq.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vrq.i, align 8
  %data.i = getelementptr inbounds %struct.atto_vda_flash_req, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %sgc1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %a, ptr %sgc1.i, align 4
  %first_req.i.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %5, i32 0, i32 12, i32 1
  %57 = ptrtoint ptr %first_req.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %rq, ptr %first_req.i.i, align 4
  %58 = load ptr, ptr %vrq.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %58, i32 116
  %sge.i.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %5, i32 0, i32 12, i32 5
  %limit.i.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %5, i32 0, i32 12, i32 5, i32 0, i32 2
  %59 = ptrtoint ptr %limit.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr1.i.i, ptr %limit.i.i, align 4
  %60 = ptrtoint ptr %sge.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %data.i, ptr %sge.i.i, align 4
  %last.i.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %5, i32 0, i32 12, i32 5, i32 0, i32 1
  %61 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %data.i, ptr %last.i.i, align 4
  %62 = load ptr, ptr %vrq.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %data.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i8
  %sg_list_offset12.i.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %sg_list_offset12.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv.i.i, ptr %sg_list_offset12.i.i, align 1
  %chain.i.i = getelementptr inbounds %struct.esas2r_flash_context, ptr %5, i32 0, i32 12, i32 5, i32 0, i32 3
  %64 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %chain.i.i, align 4
  %65 = load ptr, ptr %vrq.i, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %65, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i55.i = icmp eq i32 %67, 0
  br i1 %cmp.i55.i, label %if.then14.i.if.end21.i_crit_edge, label %esas2r_build_sg_list.exit.i, !prof !29

if.then14.i.if.end21.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

esas2r_build_sg_list.exit.i:                      ; preds = %if.then14.i
  %build_sgl.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %68 = ptrtoint ptr %build_sgl.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %build_sgl.i.i, align 8
  %call.i.i = tail call zeroext i1 %69(ptr noundef %a, ptr noundef %sgc1.i) #11
  br i1 %call.i.i, label %esas2r_build_sg_list.exit.i.if.end21.i_crit_edge, label %if.then16.i

esas2r_build_sg_list.exit.i.if.end21.i_crit_edge: ; preds = %esas2r_build_sg_list.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then16.i:                                      ; preds = %esas2r_build_sg_list.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %req_stat to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 2, ptr %req_stat, align 1
  br label %if.end

if.else18.i:                                      ; preds = %esas2r_rq_free_sg_lists.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %length9.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %length9.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else18.i, %esas2r_build_sg_list.exit.i.if.end21.i_crit_edge, %if.then14.i.if.end21.i_crit_edge
  %72 = ptrtoint ptr %curr_len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %curr_len.i, align 4
  %74 = ptrtoint ptr %flsh_addr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flsh_addr.i, align 4
  %add.i = add i32 %75, %73
  store i32 %add.i, ptr %flsh_addr.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end21.i, %if.then16.i, %entry.if.end_crit_edge
  %76 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %77)
  %cmp = icmp eq i8 %77, -2
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esas2r_fmapi_callback(ptr noundef %a, ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %0 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_cx, align 4
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %2 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then:                                          ; preds = %entry
  %vrq1 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %4 = ptrtoint ptr %vrq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vrq1, align 8
  %sub_func = getelementptr inbounds %struct.atto_vda_flash_req, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %sub_func to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sub_func, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %7, label %if.end13thread-pre-split [
    i8 0, label %sw.bb
    i8 2, label %if.then.commit_crit_edge
  ]

if.then.commit_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %commit

sw.bb:                                            ; preds = %if.then
  %cur_offset = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 12, i32 3
  %9 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_offset, align 4
  %cmp4 = icmp eq ptr %10, null
  br i1 %cmp4, label %sw.bb.commit_crit_edge, label %if.end

sw.bb.commit_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %commit

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %sub_func to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %sub_func, align 1
  %12 = ptrtoint ptr %req_stat to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -2, ptr %req_stat, align 1
  br label %if.end20

commit:                                           ; preds = %sw.bb.commit_crit_edge, %if.then.commit_crit_edge
  %13 = ptrtoint ptr %sub_func to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %sub_func, align 1
  %14 = ptrtoint ptr %req_stat to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -2, ptr %req_stat, align 1
  %interrupt_cb = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %interrupt_cb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interrupt_cb, align 4
  %interrupt_cb12 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 14
  %17 = ptrtoint ptr %interrupt_cb12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %interrupt_cb12, align 8
  br label %if.end20

if.end13thread-pre-split:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %req_stat, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.end13thread-pre-split, %entry.if.end13_crit_edge
  %19 = phi i8 [ %.pr, %if.end13thread-pre-split ], [ %3, %entry.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %19)
  %cmp16.not = icmp eq i8 %19, -2
  br i1 %cmp16.not, label %if.end13.if.end20_crit_edge, label %if.then18

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %interrupt_cb19 = getelementptr inbounds %struct.esas2r_flash_context, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %interrupt_cb19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %interrupt_cb19, align 4
  tail call void %21(ptr noundef %a, ptr noundef %rq) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end13.if.end20_crit_edge, %commit, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/esas2r/esas2r_flash.c", i32 1091, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/esas2r/esas2r_flash.c", i32 1096, i32 24}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/esas2r/esas2r_flash.c", i32 1134, i32 26}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/esas2r/esas2r_flash.c", i32 1148, i32 27}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/esas2r/esas2r_flash.c", i32 1152, i32 27}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/esas2r/esas2r_flash.c", i32 1156, i32 27}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/esas2r/esas2r_flash.c", i32 1160, i32 27}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/esas2r/esas2r_flash.c", i32 1181, i32 24}
!16 = !{ptr @cmd_to_fls_func, !17, !"cmd_to_fls_func", i1 false, i1 false}
!17 = !{!"../drivers/scsi/esas2r/esas2r_flash.c", i32 88, i32 11}
!18 = !{ptr @default_sas_nvram, !19, !"default_sas_nvram", i1 false, i1 false}
!19 = !{!"../drivers/scsi/esas2r/esas2r_flash.c", i32 57, i32 32}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 5069215}
!31 = !{i64 2155175067}
!32 = !{i64 2148376513}
!33 = !{i64 2148291822, i64 2148291854, i64 2148291883, i64 2148291917, i64 2148291948, i64 2148291971}
!34 = !{i64 2148376742}
!35 = !{i64 2155160792}
!36 = !{i64 5069017}
!37 = !{i64 2155171069}
!38 = !{i64 5069435}
!39 = !{i64 2155172158}
!40 = !{i64 2155172987}
!41 = !{i64 2155173396}
!42 = !{i64 2155174104}
!43 = !{i64 2148379554}
!44 = !{i64 2148294287, i64 2148294319, i64 2148294348, i64 2148294382, i64 2148294413, i64 2148294436}
!45 = !{i64 2148379783}
!46 = !{i64 2155161646}
