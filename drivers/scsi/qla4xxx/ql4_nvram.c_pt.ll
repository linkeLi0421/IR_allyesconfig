; ModuleID = '/llk/IR_all_yes/drivers/scsi/qla4xxx/ql4_nvram.c_pt.bc'
source_filename = "../drivers/scsi/qla4xxx/ql4_nvram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.scsi_qla_host = type { i32, i32, ptr, i32, i16, i16, ptr, ptr, ptr, i32, i32, i16, i32, ptr, [76 x i8], %struct.spinlock, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i16, [32 x i8], [256 x i8], i8, [6 x i8], [16 x i8], i16, i32, i32, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.list_head, i16, i16, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, ptr, i16, i16, i16, i16, i16, i16, i16, [512 x %struct.aen], %struct.ql4_aen_log, %struct.mutex, i8, [8 x i32], [512 x ptr], ptr, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rwlock_t, i16, i32, %struct.qla4_8xxx_legacy_intr_set, i32, i8, i32, ptr, %struct.ql82xx_hw_data, i32, i32, ptr, i32, i32, ptr, i32, i32, %struct.completion, %struct.ipaddress_config, ptr, ptr, ptr, %struct.about_fw_info, i32, i32, i16, i32, ptr, ptr, %struct.mutex, ptr, [16 x i32], ptr, %struct.ql4_boot_tgt_info, i16, i16, i16, [16 x i8], %struct.completion, ptr, i16, i16, i32, i16, %struct.list_head, %struct.spinlock, [128 x ptr], i32, ptr, %struct.qla4_83xx_reset_template, ptr, i32, %struct.qla4_83xx_idc_information, ptr, i32, i32, i32, %struct.completion, %struct.completion, [56 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.aen = type { [8 x i32] }
%struct.ql4_aen_log = type { i32, [512 x %struct.aen] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.qla4_8xxx_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.ql82xx_hw_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipaddress_config = type { i16, i16, i16, i8, [4 x i8], [4 x i8], [4 x i8], i32, i32, i8, i8, i8, i8, i16, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, [11 x i8], i8, [11 x i8], i8, i16, i8, i8, i32, i32, i32, i8, i32, i16, i8, i16, i16, i16, i16, i16, [224 x i8] }
%struct.in6_addr = type { %union.anon.66 }
%union.anon.66 = type { [4 x i32] }
%struct.about_fw_info = type { i16, i16, i16, i16, [16 x i8], [16 x i8], [16 x i8], i16, [6 x i8], i16, i16, i16, i16, i16, i16, [180 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ql4_boot_tgt_info = type { %struct.ql4_boot_session_info, %struct.ql4_boot_session_info }
%struct.ql4_boot_session_info = type { [224 x i8], [1 x %struct.ql4_conn_info] }
%struct.ql4_conn_info = type { i16, %struct.ip_address_format, %struct.ql4_chap_format }
%struct.ip_address_format = type { i8, [16 x i8] }
%struct.ql4_chap_format = type { [256 x i8], [100 x i8], [256 x i8], [100 x i8], i16, i16, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.qla4_83xx_reset_template = type { i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.qla4_83xx_idc_information = type { i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.174, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.174 = type { ptr }
%struct.isp_reg = type { [8 x i32], i32, i32, i32, %union.anon.175, i32, i32, [4 x i32], %union.anon.178 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, [2 x i32] }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { i32, i32, i32, i32, [8 x i32], i32, [23 x i32], i32, i32, [5 x i32], i32 }

@ql4xextended_error_logging = external dso_local local_unnamed_addr global i32, align 4
@ql4xxx_sem_spinlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"scsi%ld : Trying to get SEM lock - mask= 0x%x, code = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ql4xxx_sem_spinlock\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/qla4xxx/ql4_nvram.c\00", [63 x i8] zeroinitializer }, align 32
@ql4xxx_sem_spinlock._entry_ptr = internal global ptr @ql4xxx_sem_spinlock._entry, section ".printk_index", align 4
@ql4xxx_sem_spinlock._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"scsi%ld : Got SEM LOCK - mask= 0x%x, code = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@ql4xxx_sem_spinlock._entry_ptr.5 = internal global ptr @ql4xxx_sem_spinlock._entry.3, section ".printk_index", align 4
@ql4xxx_sem_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"scsi%ld : UNLOCK SEM - mask= 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ql4xxx_sem_unlock\00", [46 x i8] zeroinitializer }, align 32
@ql4xxx_sem_unlock._entry_ptr = internal global ptr @ql4xxx_sem_unlock._entry, section ".printk_index", align 4
@ql4xxx_sem_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"scsi%ld : Got SEM LOCK - mask= 0x%x, code = 0x%x, sema code=0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ql4xxx_sem_lock\00", [16 x i8] zeroinitializer }, align 32
@ql4xxx_sem_lock._entry_ptr = internal global ptr @ql4xxx_sem_lock._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 208, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 216, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 235, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [36 x i8] c"../drivers/scsi/qla4xxx/ql4_nvram.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 249, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @ql4xxx_sem_lock._entry, ptr @ql4xxx_sem_lock._entry_ptr, ptr @ql4xxx_sem_spinlock._entry, ptr @ql4xxx_sem_spinlock._entry.3, ptr @ql4xxx_sem_spinlock._entry_ptr, ptr @ql4xxx_sem_spinlock._entry_ptr.5, ptr @ql4xxx_sem_unlock._entry, ptr @ql4xxx_sem_unlock._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4xxx_sem_spinlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4xxx_sem_spinlock._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4xxx_sem_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ql4xxx_sem_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @rd_nvram_word(ptr noundef %ha, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom_cmd_data.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 16
  %0 = ptrtoint ptr %eeprom_cmd_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 983042, ptr %eeprom_cmd_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %pdev.i.i.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %1 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %device.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %4)
  %cmp.i.not.i.i.i.i = icmp eq i16 %4, 16400
  %reg.i.i.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %5 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i.i.i.i = getelementptr inbounds %struct.isp_reg, ptr %6, i32 0, i32 4
  %nvram3.i.i.i.i = getelementptr inbounds %struct.isp_reg, ptr %6, i32 0, i32 4, i32 0, i32 1
  %cond.i.i.i.i = select i1 %cmp.i.not.i.i.i.i, ptr %u1.i.i.i.i, ptr %nvram3.i.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i.i.i.i, i32 33558272) #4, !srcloc !30
  %7 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i6.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %device.i.i6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device.i.i6.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %10)
  %cmp.i.not.i7.i.i.i = icmp eq i16 %10, 16400
  %11 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i9.i.i.i = getelementptr inbounds %struct.isp_reg, ptr %12, i32 0, i32 4
  %nvram3.i10.i.i.i = getelementptr inbounds %struct.isp_reg, ptr %12, i32 0, i32 4, i32 0, i32 1
  %cond.i11.i.i.i = select i1 %cmp.i.not.i7.i.i.i, ptr %u1.i9.i.i.i, ptr %nvram3.i10.i.i.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i11.i.i.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #4
  %15 = ptrtoint ptr %eeprom_cmd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %eeprom_cmd_data.i.i, align 4
  %or.i.i = or i32 %16, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #4
  %18 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i.i3.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %device.i.i.i.i3.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device.i.i.i.i3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %21)
  %cmp.i.not.i.i.i4.i = icmp eq i16 %21, 16400
  %22 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i.i.i6.i = getelementptr inbounds %struct.isp_reg, ptr %23, i32 0, i32 4
  %nvram3.i.i.i7.i = getelementptr inbounds %struct.isp_reg, ptr %23, i32 0, i32 4, i32 0, i32 1
  %cond.i.i.i8.i = select i1 %cmp.i.not.i.i.i4.i, ptr %u1.i.i.i6.i, ptr %nvram3.i.i.i7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i.i.i8.i, i32 %17) #4, !srcloc !30
  %24 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i6.i.i9.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %device.i.i6.i.i9.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device.i.i6.i.i9.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %27)
  %cmp.i.not.i7.i.i10.i = icmp eq i16 %27, 16400
  %28 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i9.i.i11.i = getelementptr inbounds %struct.isp_reg, ptr %29, i32 0, i32 4
  %nvram3.i10.i.i12.i = getelementptr inbounds %struct.isp_reg, ptr %29, i32 0, i32 4, i32 0, i32 1
  %cond.i11.i.i13.i = select i1 %cmp.i.not.i7.i.i10.i, ptr %u1.i9.i.i11.i, ptr %nvram3.i10.i.i12.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i11.i.i13.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #4
  %32 = ptrtoint ptr %eeprom_cmd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %eeprom_cmd_data.i.i, align 4
  %or3.i.i = or i32 %33, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %34 = tail call i32 @llvm.bswap.i32(i32 %or3.i.i) #4
  %35 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i2.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %device.i.i.i2.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %device.i.i.i2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %38)
  %cmp.i.not.i.i3.i.i = icmp eq i16 %38, 16400
  %39 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i.i5.i.i = getelementptr inbounds %struct.isp_reg, ptr %40, i32 0, i32 4
  %nvram3.i.i6.i.i = getelementptr inbounds %struct.isp_reg, ptr %40, i32 0, i32 4, i32 0, i32 1
  %cond.i.i7.i.i = select i1 %cmp.i.not.i.i3.i.i, ptr %u1.i.i5.i.i, ptr %nvram3.i.i6.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i.i7.i.i, i32 %34) #4, !srcloc !30
  %41 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i6.i8.i.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %device.i.i6.i8.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %device.i.i6.i8.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %44)
  %cmp.i.not.i7.i9.i.i = icmp eq i16 %44, 16400
  %45 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i9.i10.i.i = getelementptr inbounds %struct.isp_reg, ptr %46, i32 0, i32 4
  %nvram3.i10.i11.i.i = getelementptr inbounds %struct.isp_reg, ptr %46, i32 0, i32 4, i32 0, i32 1
  %cond.i11.i12.i.i = select i1 %cmp.i.not.i7.i9.i.i, ptr %u1.i9.i10.i.i, ptr %nvram3.i10.i11.i.i
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i11.i12.i.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #4
  %49 = ptrtoint ptr %eeprom_cmd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %eeprom_cmd_data.i.i, align 4
  %or5.i.i = or i32 %50, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %51 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i) #4
  %52 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i14.i.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %device.i.i.i14.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %device.i.i.i14.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %55)
  %cmp.i.not.i.i15.i.i = icmp eq i16 %55, 16400
  %56 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i.i17.i.i = getelementptr inbounds %struct.isp_reg, ptr %57, i32 0, i32 4
  %nvram3.i.i18.i.i = getelementptr inbounds %struct.isp_reg, ptr %57, i32 0, i32 4, i32 0, i32 1
  %cond.i.i19.i.i = select i1 %cmp.i.not.i.i15.i.i, ptr %u1.i.i17.i.i, ptr %nvram3.i.i18.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i.i19.i.i, i32 %51) #4, !srcloc !30
  %58 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i6.i20.i.i = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %device.i.i6.i20.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %device.i.i6.i20.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %61)
  %cmp.i.not.i7.i21.i.i = icmp eq i16 %61, 16400
  %62 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i9.i22.i.i = getelementptr inbounds %struct.isp_reg, ptr %63, i32 0, i32 4
  %nvram3.i10.i23.i.i = getelementptr inbounds %struct.isp_reg, ptr %63, i32 0, i32 4, i32 0, i32 1
  %cond.i11.i24.i.i = select i1 %cmp.i.not.i7.i21.i.i, ptr %u1.i9.i22.i.i, ptr %nvram3.i10.i23.i.i
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i11.i24.i.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748) #4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry
  %previousBit.0103.i.i = phi i32 [ 65535, %entry ], [ %previousBit.1.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %cmp.i.i = phi i1 [ true, %entry ], [ false, %if.end.i.i.for.body.i.i_crit_edge ]
  %cmd.addr.0101.i.i = phi i32 [ 2, %entry ], [ %and.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %and.i.i = shl i32 %cmd.addr.0101.i.i, 1
  %66 = and i32 %and.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %previousBit.0103.i.i, i32 %66)
  %cmp7.not.i.i = icmp eq i32 %previousBit.0103.i.i, %66
  br i1 %cmp7.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %eeprom_cmd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %eeprom_cmd_data.i.i, align 4
  %or9.i.i = or i32 %68, %66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %69 = tail call i32 @llvm.bswap.i32(i32 %or9.i.i) #4
  %70 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i26.i.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %device.i.i.i26.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %device.i.i.i26.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %73)
  %cmp.i.not.i.i27.i.i = icmp eq i16 %73, 16400
  %74 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i.i29.i.i = getelementptr inbounds %struct.isp_reg, ptr %75, i32 0, i32 4
  %nvram3.i.i30.i.i = getelementptr inbounds %struct.isp_reg, ptr %75, i32 0, i32 4, i32 0, i32 1
  %cond.i.i31.i.i = select i1 %cmp.i.not.i.i27.i.i, ptr %u1.i.i29.i.i, ptr %nvram3.i.i30.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i.i31.i.i, i32 %69) #4, !srcloc !30
  %76 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i6.i32.i.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %device.i.i6.i32.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %device.i.i6.i32.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %79)
  %cmp.i.not.i7.i33.i.i = icmp eq i16 %79, 16400
  %80 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i9.i34.i.i = getelementptr inbounds %struct.isp_reg, ptr %81, i32 0, i32 4
  %nvram3.i10.i35.i.i = getelementptr inbounds %struct.isp_reg, ptr %81, i32 0, i32 4, i32 0, i32 1
  %cond.i11.i36.i.i = select i1 %cmp.i.not.i7.i33.i.i, ptr %u1.i9.i34.i.i, ptr %nvram3.i10.i35.i.i
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i11.i36.i.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748) #4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %previousBit.1.i.i = phi i32 [ %66, %if.then.i.i ], [ %previousBit.0103.i.i, %for.body.i.i.if.end.i.i_crit_edge ]
  %84 = ptrtoint ptr %eeprom_cmd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %eeprom_cmd_data.i.i, align 4
  %or11.i.i = or i32 %66, %85
  %or12.i.i = or i32 %or11.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %86 = tail call i32 @llvm.bswap.i32(i32 %or12.i.i) #4
  %87 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i38.i.i = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 8
  %89 = ptrtoint ptr %device.i.i.i38.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %device.i.i.i38.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %90)
  %cmp.i.not.i.i39.i.i = icmp eq i16 %90, 16400
  %91 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i.i41.i.i = getelementptr inbounds %struct.isp_reg, ptr %92, i32 0, i32 4
  %nvram3.i.i42.i.i = getelementptr inbounds %struct.isp_reg, ptr %92, i32 0, i32 4, i32 0, i32 1
  %cond.i.i43.i.i = select i1 %cmp.i.not.i.i39.i.i, ptr %u1.i.i41.i.i, ptr %nvram3.i.i42.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i.i43.i.i, i32 %86) #4, !srcloc !30
  %93 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i6.i44.i.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 8
  %95 = ptrtoint ptr %device.i.i6.i44.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %device.i.i6.i44.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %96)
  %cmp.i.not.i7.i45.i.i = icmp eq i16 %96, 16400
  %97 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i9.i46.i.i = getelementptr inbounds %struct.isp_reg, ptr %98, i32 0, i32 4
  %nvram3.i10.i47.i.i = getelementptr inbounds %struct.isp_reg, ptr %98, i32 0, i32 4, i32 0, i32 1
  %cond.i11.i48.i.i = select i1 %cmp.i.not.i7.i45.i.i, ptr %u1.i9.i46.i.i, ptr %nvram3.i10.i47.i.i
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i11.i48.i.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748) #4
  %101 = ptrtoint ptr %eeprom_cmd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %eeprom_cmd_data.i.i, align 4
  %or14.i.i = or i32 %102, %66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %103 = tail call i32 @llvm.bswap.i32(i32 %or14.i.i) #4
  %104 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i50.i.i = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 8
  %106 = ptrtoint ptr %device.i.i.i50.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %device.i.i.i50.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %107)
  %cmp.i.not.i.i51.i.i = icmp eq i16 %107, 16400
  %108 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i.i53.i.i = getelementptr inbounds %struct.isp_reg, ptr %109, i32 0, i32 4
  %nvram3.i.i54.i.i = getelementptr inbounds %struct.isp_reg, ptr %109, i32 0, i32 4, i32 0, i32 1
  %cond.i.i55.i.i = select i1 %cmp.i.not.i.i51.i.i, ptr %u1.i.i53.i.i, ptr %nvram3.i.i54.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i.i55.i.i, i32 %103) #4, !srcloc !30
  %110 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i6.i56.i.i = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %device.i.i6.i56.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %device.i.i6.i56.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %113)
  %cmp.i.not.i7.i57.i.i = icmp eq i16 %113, 16400
  %114 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i9.i58.i.i = getelementptr inbounds %struct.isp_reg, ptr %115, i32 0, i32 4
  %nvram3.i10.i59.i.i = getelementptr inbounds %struct.isp_reg, ptr %115, i32 0, i32 4, i32 0, i32 1
  %cond.i11.i60.i.i = select i1 %cmp.i.not.i7.i57.i.i, ptr %u1.i9.i58.i.i, ptr %nvram3.i10.i59.i.i
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i11.i60.i.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 214748) #4
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %for.end.i.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end.i.i
  %118 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 8
  %120 = ptrtoint ptr %device.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %device.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %121)
  %cmp.i.not.i.i.i = icmp eq i16 %121, 16400
  %shl16.i.i = select i1 %cmp.i.not.i.i.i, i32 128, i32 512
  br label %for.body20.i.i

for.body20.i.i:                                   ; preds = %if.end28.i.i.for.body20.i.i_crit_edge, %for.end.i.i
  %previousBit.2109.i.i = phi i32 [ 65535, %for.end.i.i ], [ %previousBit.3.i.i, %if.end28.i.i.for.body20.i.i_crit_edge ]
  %i.1108.i.i = phi i32 [ 0, %for.end.i.i ], [ %inc37.i.i, %if.end28.i.i.for.body20.i.i_crit_edge ]
  %addr.addr.0107.i.i = phi i32 [ %offset, %for.end.i.i ], [ %shl35.i.i, %if.end28.i.i.for.body20.i.i_crit_edge ]
  %and21.i.i = and i32 %addr.addr.0107.i.i, %shl16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  %cond23.i.i = select i1 %tobool22.not.i.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %previousBit.2109.i.i, i32 %cond23.i.i)
  %cmp24.not.i.i = icmp eq i32 %previousBit.2109.i.i, %cond23.i.i
  br i1 %cmp24.not.i.i, label %for.body20.i.i.if.end28.i.i_crit_edge, label %if.then25.i.i

for.body20.i.i.if.end28.i.i_crit_edge:            ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.i.i

if.then25.i.i:                                    ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %122 = ptrtoint ptr %eeprom_cmd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %eeprom_cmd_data.i.i, align 4
  %or27.i.i = or i32 %123, %cond23.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %124 = tail call i32 @llvm.bswap.i32(i32 %or27.i.i) #4
  %125 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i66.i.i = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 8
  %127 = ptrtoint ptr %device.i.i.i66.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %device.i.i.i66.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %128)
  %cmp.i.not.i.i67.i.i = icmp eq i16 %128, 16400
  %129 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i.i69.i.i = getelementptr inbounds %struct.isp_reg, ptr %130, i32 0, i32 4
  %nvram3.i.i70.i.i = getelementptr inbounds %struct.isp_reg, ptr %130, i32 0, i32 4, i32 0, i32 1
  %cond.i.i71.i.i = select i1 %cmp.i.not.i.i67.i.i, ptr %u1.i.i69.i.i, ptr %nvram3.i.i70.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i.i71.i.i, i32 %124) #4, !srcloc !30
  %131 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i6.i72.i.i = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 8
  %133 = ptrtoint ptr %device.i.i6.i72.i.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %device.i.i6.i72.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %134)
  %cmp.i.not.i7.i73.i.i = icmp eq i16 %134, 16400
  %135 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i9.i74.i.i = getelementptr inbounds %struct.isp_reg, ptr %136, i32 0, i32 4
  %nvram3.i10.i75.i.i = getelementptr inbounds %struct.isp_reg, ptr %136, i32 0, i32 4, i32 0, i32 1
  %cond.i11.i76.i.i = select i1 %cmp.i.not.i7.i73.i.i, ptr %u1.i9.i74.i.i, ptr %nvram3.i10.i75.i.i
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i11.i76.i.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %138(i32 noundef 214748) #4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then25.i.i, %for.body20.i.i.if.end28.i.i_crit_edge
  %previousBit.3.i.i = phi i32 [ %cond23.i.i, %if.then25.i.i ], [ %previousBit.2109.i.i, %for.body20.i.i.if.end28.i.i_crit_edge ]
  %139 = ptrtoint ptr %eeprom_cmd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %eeprom_cmd_data.i.i, align 4
  %or30.i.i = or i32 %cond23.i.i, %140
  %or31.i.i = or i32 %or30.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %141 = tail call i32 @llvm.bswap.i32(i32 %or31.i.i) #4
  %142 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i78.i.i = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 8
  %144 = ptrtoint ptr %device.i.i.i78.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %device.i.i.i78.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %145)
  %cmp.i.not.i.i79.i.i = icmp eq i16 %145, 16400
  %146 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i.i81.i.i = getelementptr inbounds %struct.isp_reg, ptr %147, i32 0, i32 4
  %nvram3.i.i82.i.i = getelementptr inbounds %struct.isp_reg, ptr %147, i32 0, i32 4, i32 0, i32 1
  %cond.i.i83.i.i = select i1 %cmp.i.not.i.i79.i.i, ptr %u1.i.i81.i.i, ptr %nvram3.i.i82.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i.i83.i.i, i32 %141) #4, !srcloc !30
  %148 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i6.i84.i.i = getelementptr inbounds %struct.pci_dev, ptr %149, i32 0, i32 8
  %150 = ptrtoint ptr %device.i.i6.i84.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %device.i.i6.i84.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %151)
  %cmp.i.not.i7.i85.i.i = icmp eq i16 %151, 16400
  %152 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i9.i86.i.i = getelementptr inbounds %struct.isp_reg, ptr %153, i32 0, i32 4
  %nvram3.i10.i87.i.i = getelementptr inbounds %struct.isp_reg, ptr %153, i32 0, i32 4, i32 0, i32 1
  %cond.i11.i88.i.i = select i1 %cmp.i.not.i7.i85.i.i, ptr %u1.i9.i86.i.i, ptr %nvram3.i10.i87.i.i
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i11.i88.i.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 214748) #4
  %156 = ptrtoint ptr %eeprom_cmd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %eeprom_cmd_data.i.i, align 4
  %or33.i.i = or i32 %157, %cond23.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %158 = tail call i32 @llvm.bswap.i32(i32 %or33.i.i) #4
  %159 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i90.i.i = getelementptr inbounds %struct.pci_dev, ptr %160, i32 0, i32 8
  %161 = ptrtoint ptr %device.i.i.i90.i.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %device.i.i.i90.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %162)
  %cmp.i.not.i.i91.i.i = icmp eq i16 %162, 16400
  %163 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i.i93.i.i = getelementptr inbounds %struct.isp_reg, ptr %164, i32 0, i32 4
  %nvram3.i.i94.i.i = getelementptr inbounds %struct.isp_reg, ptr %164, i32 0, i32 4, i32 0, i32 1
  %cond.i.i95.i.i = select i1 %cmp.i.not.i.i91.i.i, ptr %u1.i.i93.i.i, ptr %nvram3.i.i94.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i.i95.i.i, i32 %158) #4, !srcloc !30
  %165 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i6.i96.i.i = getelementptr inbounds %struct.pci_dev, ptr %166, i32 0, i32 8
  %167 = ptrtoint ptr %device.i.i6.i96.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %device.i.i6.i96.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %168)
  %cmp.i.not.i7.i97.i.i = icmp eq i16 %168, 16400
  %169 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i9.i98.i.i = getelementptr inbounds %struct.isp_reg, ptr %170, i32 0, i32 4
  %nvram3.i10.i99.i.i = getelementptr inbounds %struct.isp_reg, ptr %170, i32 0, i32 4, i32 0, i32 1
  %cond.i11.i100.i.i = select i1 %cmp.i.not.i7.i97.i.i, ptr %u1.i9.i98.i.i, ptr %nvram3.i10.i99.i.i
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i11.i100.i.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %172(i32 noundef 214748) #4
  %shl35.i.i = shl i32 %addr.addr.0107.i.i, 1
  %inc37.i.i = add nuw nsw i32 %i.1108.i.i, 1
  %173 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i62.i.i = getelementptr inbounds %struct.pci_dev, ptr %174, i32 0, i32 8
  %175 = ptrtoint ptr %device.i.i62.i.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %device.i.i62.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %176)
  %cmp.i.not.i63.i.i = icmp eq i16 %176, 16400
  %cond.i64.i.i = select i1 %cmp.i.not.i63.i.i, i32 8, i32 10
  %cmp19.i.i = icmp ult i32 %inc37.i.i, %cond.i64.i.i
  br i1 %cmp19.i.i, label %if.end28.i.i.for.body20.i.i_crit_edge, label %if.end28.i.i.for.body.i40.i_crit_edge

if.end28.i.i.for.body.i40.i_crit_edge:            ; preds = %if.end28.i.i
  br label %for.body.i40.i

if.end28.i.i.for.body20.i.i_crit_edge:            ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body20.i.i

for.body.i40.i:                                   ; preds = %for.body.i40.i.for.body.i40.i_crit_edge, %if.end28.i.i.for.body.i40.i_crit_edge
  %i.014.i.i = phi i32 [ %inc.i.i, %for.body.i40.i.for.body.i40.i_crit_edge ], [ 0, %if.end28.i.i.for.body.i40.i_crit_edge ]
  %data.013.i.i = phi i32 [ %or6.i.i, %for.body.i40.i.for.body.i40.i_crit_edge ], [ 0, %if.end28.i.i.for.body.i40.i_crit_edge ]
  %177 = ptrtoint ptr %eeprom_cmd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %eeprom_cmd_data.i.i, align 4
  %or.i17.i = or i32 %178, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %179 = tail call i32 @llvm.bswap.i32(i32 %or.i17.i) #4
  %180 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i.i18.i = getelementptr inbounds %struct.pci_dev, ptr %181, i32 0, i32 8
  %182 = ptrtoint ptr %device.i.i.i.i18.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %device.i.i.i.i18.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %183)
  %cmp.i.not.i.i.i19.i = icmp eq i16 %183, 16400
  %184 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i.i.i20.i = getelementptr inbounds %struct.isp_reg, ptr %185, i32 0, i32 4
  %nvram3.i.i.i21.i = getelementptr inbounds %struct.isp_reg, ptr %185, i32 0, i32 4, i32 0, i32 1
  %cond.i.i.i22.i = select i1 %cmp.i.not.i.i.i19.i, ptr %u1.i.i.i20.i, ptr %nvram3.i.i.i21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i.i.i22.i, i32 %179) #4, !srcloc !30
  %186 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i6.i.i23.i = getelementptr inbounds %struct.pci_dev, ptr %187, i32 0, i32 8
  %188 = ptrtoint ptr %device.i.i6.i.i23.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %device.i.i6.i.i23.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %189)
  %cmp.i.not.i7.i.i24.i = icmp eq i16 %189, 16400
  %190 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i9.i.i25.i = getelementptr inbounds %struct.isp_reg, ptr %191, i32 0, i32 4
  %nvram3.i10.i.i26.i = getelementptr inbounds %struct.isp_reg, ptr %191, i32 0, i32 4, i32 0, i32 1
  %cond.i11.i.i27.i = select i1 %cmp.i.not.i7.i.i24.i, ptr %u1.i9.i.i25.i, ptr %nvram3.i10.i.i26.i
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i11.i.i27.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %193(i32 noundef 214748) #4
  %194 = ptrtoint ptr %eeprom_cmd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %eeprom_cmd_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #4
  %197 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i2.i28.i = getelementptr inbounds %struct.pci_dev, ptr %198, i32 0, i32 8
  %199 = ptrtoint ptr %device.i.i.i2.i28.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %device.i.i.i2.i28.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %200)
  %cmp.i.not.i.i3.i29.i = icmp eq i16 %200, 16400
  %201 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i.i5.i30.i = getelementptr inbounds %struct.isp_reg, ptr %202, i32 0, i32 4
  %nvram3.i.i6.i31.i = getelementptr inbounds %struct.isp_reg, ptr %202, i32 0, i32 4, i32 0, i32 1
  %cond.i.i7.i32.i = select i1 %cmp.i.not.i.i3.i29.i, ptr %u1.i.i5.i30.i, ptr %nvram3.i.i6.i31.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i.i7.i32.i, i32 %196) #4, !srcloc !30
  %203 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i6.i8.i33.i = getelementptr inbounds %struct.pci_dev, ptr %204, i32 0, i32 8
  %205 = ptrtoint ptr %device.i.i6.i8.i33.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %device.i.i6.i8.i33.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %206)
  %cmp.i.not.i7.i9.i34.i = icmp eq i16 %206, 16400
  %207 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i9.i10.i35.i = getelementptr inbounds %struct.isp_reg, ptr %208, i32 0, i32 4
  %nvram3.i10.i11.i36.i = getelementptr inbounds %struct.isp_reg, ptr %208, i32 0, i32 4, i32 0, i32 1
  %cond.i11.i12.i37.i = select i1 %cmp.i.not.i7.i9.i34.i, ptr %u1.i9.i10.i35.i, ptr %nvram3.i10.i11.i36.i
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i11.i12.i37.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %210 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %210(i32 noundef 214748) #4
  %211 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i38.i = getelementptr inbounds %struct.pci_dev, ptr %212, i32 0, i32 8
  %213 = ptrtoint ptr %device.i.i.i38.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %device.i.i.i38.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %214)
  %cmp.i.not.i.i39.i = icmp eq i16 %214, 16400
  %215 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i.i.i = getelementptr inbounds %struct.isp_reg, ptr %216, i32 0, i32 4
  %nvram3.i.i.i = getelementptr inbounds %struct.isp_reg, ptr %216, i32 0, i32 4, i32 0, i32 1
  %cond.i.i.i = select i1 %cmp.i.not.i.i39.i, ptr %u1.i.i.i, ptr %nvram3.i.i.i
  %217 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cond.i.i.i) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %218 = lshr i16 %217, 11
  %.lobit.i.i = and i16 %218, 1
  %219 = zext i16 %.lobit.i.i to i32
  %shl.i.i = shl i32 %data.013.i.i, 1
  %or6.i.i = or i32 %shl.i.i, %219
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %eeprom_readword.exit, label %for.body.i40.i.for.body.i40.i_crit_edge

for.body.i40.i.for.body.i40.i_crit_edge:          ; preds = %for.body.i40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i40.i

eeprom_readword.exit:                             ; preds = %for.body.i40.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv7.i.i = trunc i32 %or6.i.i to i16
  %220 = ptrtoint ptr %eeprom_cmd_data.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 983040, ptr %eeprom_cmd_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %221 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i.i.i44.i = getelementptr inbounds %struct.pci_dev, ptr %222, i32 0, i32 8
  %223 = ptrtoint ptr %device.i.i.i.i44.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %device.i.i.i.i44.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %224)
  %cmp.i.not.i.i.i45.i = icmp eq i16 %224, 16400
  %225 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i.i.i47.i = getelementptr inbounds %struct.isp_reg, ptr %226, i32 0, i32 4
  %nvram3.i.i.i48.i = getelementptr inbounds %struct.isp_reg, ptr %226, i32 0, i32 4, i32 0, i32 1
  %cond.i.i.i49.i = select i1 %cmp.i.not.i.i.i45.i, ptr %u1.i.i.i47.i, ptr %nvram3.i.i.i48.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i.i.i49.i, i32 3840) #4, !srcloc !30
  %227 = ptrtoint ptr %pdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %pdev.i.i.i.i.i, align 8
  %device.i.i6.i.i50.i = getelementptr inbounds %struct.pci_dev, ptr %228, i32 0, i32 8
  %229 = ptrtoint ptr %device.i.i6.i.i50.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %device.i.i6.i.i50.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %230)
  %cmp.i.not.i7.i.i51.i = icmp eq i16 %230, 16400
  %231 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %reg.i.i.i.i, align 4
  %u1.i9.i.i52.i = getelementptr inbounds %struct.isp_reg, ptr %232, i32 0, i32 4
  %nvram3.i10.i.i53.i = getelementptr inbounds %struct.isp_reg, ptr %232, i32 0, i32 4, i32 0, i32 1
  %cond.i11.i.i54.i = select i1 %cmp.i.not.i7.i.i51.i, ptr %u1.i9.i.i52.i, ptr %nvram3.i10.i.i53.i
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i11.i.i54.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %234 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %234(i32 noundef 214748) #4
  ret i16 %conv7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rd_nvram_byte(ptr noundef %ha, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %sub = sext i1 %not.tobool.not to i32
  %index.0.in = add i32 %sub, %offset
  %index.0 = sdiv i32 %index.0.in, 2
  %call = tail call zeroext i16 @rd_nvram_word(ptr noundef %ha, i32 noundef %index.0)
  %0 = tail call i16 @llvm.bswap.i16(i16 %call)
  %1 = lshr i16 %0, 8
  %rval.0.v = select i1 %tobool.not, i16 %0, i16 %1
  %rval.0 = trunc i16 %rval.0.v to i8
  ret i8 %rval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qla4xxx_is_nvram_configuration_valid(ptr noundef %ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #4
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %index.026 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %checksum.025 = phi i32 [ 0, %entry ], [ %phi.cast, %for.body.for.body_crit_edge ]
  %call8 = tail call zeroext i16 @rd_nvram_word(ptr noundef %ha, i32 noundef %index.026)
  %conv9 = zext i16 %call8 to i32
  %add = add nuw nsw i32 %checksum.025, %conv9
  %inc = add nuw nsw i32 %index.026, 1
  %phi.cast = and i32 %add, 65535
  %0 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %3)
  %cmp.i.not.i = icmp eq i16 %3, 16400
  %cond.i = select i1 %cmp.i.not.i, i32 256, i32 1024
  %cmp6 = icmp ult i32 %inc, %cond.i
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.cast)
  %cmp14 = icmp ne i32 %phi.cast, 0
  %spec.select = zext i1 %cmp14 to i32
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ql4xxx_sem_spinlock(ptr noundef %ha, i32 noundef %sem_mask, i32 noundef %sem_bits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %0 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %1 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %host_no, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %2, i32 noundef %sem_mask, i32 noundef %sem_bits) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  %or = or i32 %sem_bits, %sem_mask
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %reg.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %shr = lshr i32 %sem_mask, 16
  br label %do.body4

do.body4:                                         ; preds = %if.end41.do.body4_crit_edge, %do.end3
  %seconds.0 = phi i32 [ 30, %do.end3 ], [ %dec, %if.end41.do.body4_crit_edge ]
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %7)
  %cmp.i.not.i = icmp eq i16 %7, 16400
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i, align 4
  %u1.i = getelementptr inbounds %struct.isp_reg, ptr %9, i32 0, i32 4
  %semaphore.i = getelementptr inbounds %struct.isp_reg, ptr %9, i32 0, i32 4, i32 0, i32 1, i32 1
  %cond.i = select i1 %cmp.i.not.i, ptr %u1.i, ptr %semaphore.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i, i32 %3) #4, !srcloc !30
  %10 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i58 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %device.i.i58 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device.i.i58, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %13)
  %cmp.i.not.i59 = icmp eq i16 %13, 16400
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i, align 4
  %u1.i61 = getelementptr inbounds %struct.isp_reg, ptr %15, i32 0, i32 4
  %semaphore.i62 = getelementptr inbounds %struct.isp_reg, ptr %15, i32 0, i32 4, i32 0, i32 1, i32 1
  %cond.i63 = select i1 %cmp.i.not.i59, ptr %u1.i61, ptr %semaphore.i62
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cond.i63) #4, !srcloc !33
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %conv23 = zext i16 %17 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call10) #4
  %and = and i32 %shr, %conv23
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sem_bits)
  %cmp25 = icmp eq i32 %and, %sem_bits
  br i1 %cmp25, label %do.body28, label %if.end41

do.body28:                                        ; preds = %do.body4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %18 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp29 = icmp eq i32 %18, 2
  br i1 %cmp29, label %do.end34, label %do.body28.cleanup_crit_edge

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  %host_no36 = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %19 = ptrtoint ptr %host_no36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %host_no36, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %20, i32 noundef %sem_mask, i32 noundef %sem_bits) #7
  br label %cleanup

if.end41:                                         ; preds = %do.body4
  tail call void @msleep(i32 noundef 1000) #4
  %dec = add nsw i32 %seconds.0, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end41.cleanup_crit_edge, label %if.end41.do.body4_crit_edge

if.end41.do.body4_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end41.cleanup_crit_edge, %do.end34, %do.body28.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end34 ], [ 0, %do.body28.cleanup_crit_edge ], [ 1, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ql4xxx_sem_unlock(ptr noundef %ha, i32 noundef %sem_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %0 = tail call i32 @llvm.bswap.i32(i32 %sem_mask)
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %1 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %4)
  %cmp.i.not.i = icmp eq i16 %4, 16400
  %reg.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i, align 4
  %u1.i = getelementptr inbounds %struct.isp_reg, ptr %6, i32 0, i32 4
  %semaphore.i = getelementptr inbounds %struct.isp_reg, ptr %6, i32 0, i32 4, i32 0, i32 1, i32 1
  %cond.i = select i1 %cmp.i.not.i, ptr %u1.i, ptr %semaphore.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i, i32 %0) #4, !srcloc !30
  %7 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i30 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %device.i.i30 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device.i.i30, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %10)
  %cmp.i.not.i31 = icmp eq i16 %10, 16400
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i, align 4
  %u1.i33 = getelementptr inbounds %struct.isp_reg, ptr %12, i32 0, i32 4
  %semaphore.i34 = getelementptr inbounds %struct.isp_reg, ptr %12, i32 0, i32 4, i32 0, i32 1, i32 1
  %cond.i35 = select i1 %cmp.i.not.i31, ptr %u1.i33, ptr %semaphore.i34
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cond.i35) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %14 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp15 = icmp eq i32 %14, 2
  br i1 %cmp15, label %do.end19, label %entry.do.end23_crit_edge

entry.do.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %15 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %host_no, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %16, i32 noundef %sem_mask) #7
  br label %do.end23

do.end23:                                         ; preds = %do.end19, %entry.do.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ql4xxx_sem_lock(ptr noundef %ha, i32 noundef %sem_mask, i32 noundef %sem_bits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware_lock = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hardware_lock) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %or = or i32 %sem_bits, %sem_mask
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %pdev.i.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 7
  %1 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %4)
  %cmp.i.not.i = icmp eq i16 %4, 16400
  %reg.i = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 8
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i, align 4
  %u1.i = getelementptr inbounds %struct.isp_reg, ptr %6, i32 0, i32 4
  %semaphore.i = getelementptr inbounds %struct.isp_reg, ptr %6, i32 0, i32 4, i32 0, i32 1, i32 1
  %cond.i = select i1 %cmp.i.not.i, ptr %u1.i, ptr %semaphore.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cond.i, i32 %0) #4, !srcloc !30
  %7 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i.i, align 8
  %device.i.i40 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %device.i.i40 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device.i.i40, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16400, i16 %10)
  %cmp.i.not.i41 = icmp eq i16 %10, 16400
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i, align 4
  %u1.i43 = getelementptr inbounds %struct.isp_reg, ptr %12, i32 0, i32 4
  %semaphore.i44 = getelementptr inbounds %struct.isp_reg, ptr %12, i32 0, i32 4, i32 0, i32 1, i32 1
  %cond.i45 = select i1 %cmp.i.not.i41, ptr %u1.i43, ptr %semaphore.i44
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %cond.i45) #4, !srcloc !33
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  %conv13 = zext i16 %14 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hardware_lock, i32 noundef %call2) #4
  %shr = lshr i32 %sem_mask, 16
  %and = and i32 %shr, %conv13
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sem_bits)
  %cmp15 = icmp eq i32 %and, %sem_bits
  br i1 %cmp15, label %do.body17, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body17:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ql4xextended_error_logging to i32))
  %15 = load i32, ptr @ql4xextended_error_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp18 = icmp eq i32 %15, 2
  br i1 %cmp18, label %do.end23, label %do.body17.cleanup_crit_edge

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  %host_no = getelementptr inbounds %struct.scsi_qla_host, ptr %ha, i32 0, i32 12
  %16 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %host_no, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %17, i32 noundef %sem_mask, i32 noundef %sem_bits, i32 noundef %conv13) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.body17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end23 ], [ 1, %do.body17.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qla4xxx/ql4_nvram.c", i32 208, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ql4xxx_sem_spinlock._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ql4xxx_sem_spinlock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qla4xxx/ql4_nvram.c", i32 216, i32 4}
!8 = !{ptr @ql4xxx_sem_spinlock._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ql4xxx_sem_spinlock._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qla4xxx/ql4_nvram.c", i32 235, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ql4xxx_sem_unlock._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @ql4xxx_sem_unlock._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/qla4xxx/ql4_nvram.c", i32 249, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ql4xxx_sem_lock._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @ql4xxx_sem_lock._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2159526020}
!30 = !{i64 5012525}
!31 = !{i64 5012943}
!32 = !{i64 2159526661}
!33 = !{i64 5012105}
!34 = !{i64 2159528283}
!35 = !{i64 2159532049}
!36 = !{i64 2159532764}
!37 = !{i64 2159536006}
!38 = !{i64 2159536682}
!39 = !{i64 2159539617}
!40 = !{i64 2159540332}
