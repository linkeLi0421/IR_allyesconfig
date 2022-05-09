; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pci-thunder-ecam.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-thunder-ecam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_ecam_ops = type { i32, %struct.pci_ops, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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

@pci_thunder_ecam_ops = dso_local constant { %struct.pci_ecam_ops, [36 x i8] } { %struct.pci_ecam_ops { i32 0, %struct.pci_ops { ptr null, ptr null, ptr @pci_ecam_map_bus, ptr @thunder_ecam_config_read, ptr @thunder_ecam_config_write }, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_pci_thunder_ecam__238_360_thunder_ecam_driver_init6 = internal global ptr @thunder_ecam_driver_init, section ".initcall6.init", align 4
@thunder_ecam_config_read.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci_thunder_ecam\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"thunder_ecam_config_read\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/pci/controller/pci-thunder-ecam.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%04x:%04x - Fix pass#: %08x, where: %03x, devfn: %03x\0A\00", [41 x i8] zeroinitializer }, align 32
@thunder_ecam_config_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Bad MSIX cap header: %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@thunder_ecam_config_read._entry_ptr = internal global ptr @thunder_ecam_config_read._entry, section ".printk_index", align 4
@thunder_ecam_config_read._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Bad PCIe cap header: %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@thunder_ecam_config_read._entry_ptr.7 = internal global ptr @thunder_ecam_config_read._entry.5, section ".printk_index", align 4
@set_val.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 5, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"set_val\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set_val %04x: %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@thunder_ecam_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pci_host_common_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @thunder_ecam_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@thunder_ecam_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cavium,pci-host-thunder-ecam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pci_thunder_ecam_ops }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 176, i64 188]
@__sancov_gen_cov_switch_values.10 = internal global [10 x i64] [i64 8, i64 32, i64 112, i64 188, i64 192, i64 196, i64 200, i64 204, i64 208, i64 212]
@__sancov_gen_cov_switch_values.11 = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 16, i64 160, i64 168, i64 176]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 168, i64 188, i64 208, i64 228]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"pci_thunder_ecam_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 334, i32 27 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 177, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 207, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 263, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 20, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"thunder_ecam_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 352, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"thunder_ecam_of_match\00", align 1
@___asan_gen_.57 = private constant [45 x i8] c"../drivers/pci/controller/pci-thunder-ecam.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 344, i32 34 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__initcall__kmod_pci_thunder_ecam__238_360_thunder_ecam_driver_init6, ptr @thunder_ecam_config_read._entry, ptr @thunder_ecam_config_read._entry.5, ptr @thunder_ecam_config_read._entry_ptr, ptr @thunder_ecam_config_read._entry_ptr.7, ptr @pci_thunder_ecam_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @thunder_ecam_driver, ptr @thunder_ecam_of_match], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_thunder_ecam_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunder_ecam_config_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunder_ecam_config_read._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunder_ecam_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunder_ecam_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ecam_map_bus(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thunder_ecam_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %where, -4
  %ops = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %map_bus = getelementptr inbounds %struct.pci_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %map_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_bus, align 4
  %call = tail call ptr %3(ptr noundef %bus, i32 noundef %devfn, i32 noundef 12) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup260_crit_edge, label %if.end

entry.cleanup260_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

if.end:                                           ; preds = %entry
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call) #5, !srcloc !35
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  %shr = lshr i32 %5, 16
  %and3 = and i32 %shr, 127
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 8
  %map_bus5 = getelementptr inbounds %struct.pci_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %map_bus5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map_bus5, align 4
  %call6 = tail call ptr %9(ptr noundef %bus, i32 noundef %devfn, i32 noundef 8) #5
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.cleanup260_crit_edge, label %if.end9

if.end.cleanup260_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

if.end9:                                          ; preds = %if.end
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call6) #5, !srcloc !35
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp = icmp eq i32 %10, -1
  br i1 %cmp, label %if.end9.no_emulation_crit_edge, label %if.end16

if.end9.no_emulation_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_emulation

if.end16:                                         ; preds = %if.end9
  %and17 = and i32 %11, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18.not = icmp eq i32 %and17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp25 = icmp eq i32 %and3, 0
  br i1 %cmp18.not, label %if.end24, label %if.then19

if.then19:                                        ; preds = %if.end16
  br i1 %cmp25, label %if.end22, label %if.then19.no_emulation_crit_edge

if.then19.no_emulation_crit_edge:                 ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_emulation

if.end22:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call fastcc i32 @thunder_ecam_p2_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

if.end24:                                         ; preds = %if.end16
  br i1 %cmp25, label %land.lhs.true, label %if.end24.if.end33_crit_edge

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end24
  %12 = add i32 %where, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %12)
  %13 = icmp ult i32 %12, 28
  %14 = add i32 %where, -420
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %14)
  %15 = icmp ult i32 %14, 24
  %or.cond = or i1 %13, %15
  br i1 %or.cond, label %if.then32, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %val, align 4
  br label %cleanup260

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %if.end24.if.end33_crit_edge
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 8
  %map_bus35 = getelementptr inbounds %struct.pci_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %map_bus35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map_bus35, align 4
  %call36 = tail call ptr %20(ptr noundef %bus, i32 noundef %devfn, i32 noundef 0) #5
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end33.cleanup260_crit_edge, label %if.end39

if.end33.cleanup260_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

if.end39:                                         ; preds = %if.end33
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call36) #5, !srcloc !35
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp45 = icmp eq i32 %21, -1
  br i1 %cmp45, label %if.end39.no_emulation_crit_edge, label %do.body

if.end39.no_emulation_crit_edge:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_emulation

do.body:                                          ; preds = %if.end39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @thunder_ecam_config_read.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@thunder_ecam_config_read, %do.end)) #5
          to label %if.then54 [label %do.end], !srcloc !39

if.then54:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %and55 = and i32 %22, 65535
  %shr56 = lshr i32 %22, 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @thunder_ecam_config_read.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.3, i32 noundef %and55, i32 noundef %shr56, i32 noundef %11, i32 noundef %where, i32 noundef %devfn) #5
  br label %do.end

do.end:                                           ; preds = %if.then54, %do.body
  br i1 %cmp25, label %if.then59, label %if.else161

if.then59:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2098667168, i32 %21)
  %cmp60 = icmp eq i32 %21, 2098667168
  call void @__sanitizer_cov_trace_const_cmp4(i32 2098667424, i32 %21)
  %cmp62 = icmp eq i32 %21, 2098667424
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 8
  %map_bus65 = getelementptr inbounds %struct.pci_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %map_bus65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map_bus65, align 4
  %call66 = tail call ptr %26(ptr noundef %bus, i32 noundef %devfn, i32 noundef 112) #5
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.then59.cleanup260_crit_edge, label %if.end69

if.then59.cleanup260_crit_edge:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

if.end69:                                         ; preds = %if.then59
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call66) #5, !srcloc !35
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %and75 = and i32 %28, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %cmp76.not = icmp eq i32 %and75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %and)
  %cmp80 = icmp eq i32 %and, 112
  %or.cond436 = and i1 %cmp80, %cmp76.not
  br i1 %or.cond436, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %28, 48128
  tail call fastcc void @set_val(i32 noundef %or, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

if.end82:                                         ; preds = %if.end69
  %29 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end120 [
    i32 176, label %if.then84
    i32 188, label %if.then108
  ]

if.then84:                                        ; preds = %if.end82
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 8
  %map_bus86 = getelementptr inbounds %struct.pci_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %map_bus86 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map_bus86, align 4
  %call87 = tail call ptr %33(ptr noundef %bus, i32 noundef %devfn, i32 noundef 176) #5
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %if.then84.cleanup260_crit_edge, label %if.end90

if.then84.cleanup260_crit_edge:                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

if.end90:                                         ; preds = %if.then84
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call87) #5, !srcloc !35
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %and96 = and i32 %35, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end90.if.end104_crit_edge, label %do.end101

if.end90.if.end104_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

do.end101:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %35) #8
  br label %if.end104

if.end104:                                        ; preds = %do.end101, %if.end90.if.end104_crit_edge
  %or105 = or i32 %35, 48128
  tail call fastcc void @set_val(i32 noundef %or105, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

if.then108:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  %. = select i1 %cmp76.not, i32 65556, i32 131092
  %spec.select = select i1 %cmp62, i32 196628, i32 %.
  %v.0 = select i1 %cmp60, i32 262164, i32 %spec.select
  tail call fastcc void @set_val(i32 noundef %v.0, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

if.end120:                                        ; preds = %if.end82
  %36 = and i32 %where, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %36)
  %37 = icmp eq i32 %36, 192
  br i1 %37, label %if.then124, label %if.end126

if.then124:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  %call125 = tail call fastcc i32 @handle_ea_bar(i32 noundef -2130771965, i32 noundef 16, ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

if.end126:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %36)
  %38 = icmp ne i32 %36, 208
  %brmerge = select i1 %38, i1 true, i1 %cmp76.not
  br i1 %brmerge, label %if.end134, label %if.then132

if.then132:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  %call133 = tail call fastcc i32 @handle_ea_bar(i32 noundef -2130771901, i32 noundef 32, ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

if.end134:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %36)
  %39 = icmp ne i32 %36, 224
  %cmp62.not = xor i1 %cmp62, true
  %brmerge440 = select i1 %39, i1 true, i1 %cmp62.not
  br i1 %brmerge440, label %if.end142, label %if.then140

if.then140:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #7
  %call141 = tail call fastcc i32 @handle_ea_bar(i32 noundef -2130771933, i32 noundef 24, ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

if.end142:                                        ; preds = %if.end134
  %cmp60.not = xor i1 %cmp60, true
  %brmerge442 = select i1 %39, i1 true, i1 %cmp60.not
  br i1 %brmerge442, label %if.end150, label %if.then148

if.then148:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  %call149 = tail call fastcc i32 @handle_ea_bar(i32 noundef -2130770797, i32 noundef 420, ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

if.end150:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %36)
  %40 = icmp ne i32 %36, 240
  %brmerge445 = select i1 %40, i1 true, i1 %cmp60.not
  br i1 %brmerge445, label %if.end150.no_emulation_crit_edge, label %if.then156

if.end150.no_emulation_crit_edge:                 ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_emulation

if.then156:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #7
  %call157 = tail call fastcc i32 @handle_ea_bar(i32 noundef -2130770733, i32 noundef 436, ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

if.else161:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and3)
  %cmp162 = icmp eq i32 %and3, 1
  br i1 %cmp162, label %if.then163, label %if.else161.no_emulation_crit_edge

if.else161.no_emulation_crit_edge:                ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_emulation

if.then163:                                       ; preds = %if.else161
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %devfn)
  %cmp172 = icmp eq i32 %devfn, 16
  %41 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %and, label %if.then163.no_emulation_crit_edge [
    i32 112, label %if.then175
    i32 188, label %if.then199
    i32 192, label %if.then206
    i32 196, label %land.lhs.true226
    i32 200, label %land.lhs.true231
    i32 204, label %land.lhs.true236
    i32 208, label %land.lhs.true241
    i32 212, label %land.lhs.true246
  ]

if.then163.no_emulation_crit_edge:                ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_emulation

if.then175:                                       ; preds = %if.then163
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 8
  %map_bus177 = getelementptr inbounds %struct.pci_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %map_bus177 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map_bus177, align 4
  %call178 = tail call ptr %45(ptr noundef %bus, i32 noundef %devfn, i32 noundef 112) #5
  %tobool179.not = icmp eq ptr %call178, null
  br i1 %tobool179.not, label %if.then175.cleanup260_crit_edge, label %if.end181

if.then175.cleanup260_crit_edge:                  ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup260

if.end181:                                        ; preds = %if.then175
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call178) #5, !srcloc !35
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %and187 = and i32 %47, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %if.end181.if.end195_crit_edge, label %do.end192

if.end181.if.end195_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

do.end192:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #7
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %47) #8
  br label %if.end195

if.end195:                                        ; preds = %do.end192, %if.end181.if.end195_crit_edge
  %or196 = or i32 %47, 48128
  tail call fastcc void @set_val(i32 noundef %or196, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

if.then199:                                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #7
  %.446 = select i1 %cmp172, i32 65556, i32 20
  tail call fastcc void @set_val(i32 noundef %.446, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

if.then206:                                       ; preds = %if.then163
  %48 = zext i32 %devfn to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %devfn, label %if.end223.fold.split [
    i32 16, label %if.then206.if.end223_crit_edge
    i32 8, label %if.then206.if.end223_crit_edge461
    i32 160, label %if.end223.fold.split454
    i32 168, label %if.then216
    i32 176, label %if.then219
  ]

if.then206.if.end223_crit_edge461:                ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end223

if.then206.if.end223_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end223

if.then216:                                       ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end223

if.then219:                                       ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end223

if.end223.fold.split:                             ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end223

if.end223.fold.split454:                          ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end223

if.end223:                                        ; preds = %if.end223.fold.split454, %if.end223.fold.split, %if.then219, %if.then216, %if.then206.if.end223_crit_edge, %if.then206.if.end223_crit_edge461
  %v.2 = phi i32 [ 771, %if.then216 ], [ 1028, %if.then219 ], [ 257, %if.then206.if.end223_crit_edge ], [ %5, %if.end223.fold.split ], [ 257, %if.then206.if.end223_crit_edge461 ], [ 514, %if.end223.fold.split454 ]
  tail call fastcc void @set_val(i32 noundef %v.2, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

land.lhs.true226:                                 ; preds = %if.then163
  br i1 %cmp172, label %if.then228, label %land.lhs.true226.no_emulation_crit_edge

land.lhs.true226.no_emulation_crit_edge:          ; preds = %land.lhs.true226
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_emulation

if.then228:                                       ; preds = %land.lhs.true226
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @set_val(i32 noundef -2130770588, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

land.lhs.true231:                                 ; preds = %if.then163
  br i1 %cmp172, label %if.then233, label %land.lhs.true231.no_emulation_crit_edge

land.lhs.true231.no_emulation_crit_edge:          ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_emulation

if.then233:                                       ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @set_val(i32 noundef 2, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

land.lhs.true236:                                 ; preds = %if.then163
  br i1 %cmp172, label %if.then238, label %land.lhs.true236.no_emulation_crit_edge

land.lhs.true236.no_emulation_crit_edge:          ; preds = %land.lhs.true236
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_emulation

if.then238:                                       ; preds = %land.lhs.true236
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @set_val(i32 noundef -2, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

land.lhs.true241:                                 ; preds = %if.then163
  br i1 %cmp172, label %if.then243, label %land.lhs.true241.no_emulation_crit_edge

land.lhs.true241.no_emulation_crit_edge:          ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_emulation

if.then243:                                       ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @set_val(i32 noundef 33840, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

land.lhs.true246:                                 ; preds = %if.then163
  br i1 %cmp172, label %if.then248, label %land.lhs.true246.no_emulation_crit_edge

land.lhs.true246.no_emulation_crit_edge:          ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_emulation

if.then248:                                       ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @set_val(i32 noundef 15, i32 noundef %where, i32 noundef %size, ptr noundef %val)
  br label %cleanup260

no_emulation:                                     ; preds = %land.lhs.true246.no_emulation_crit_edge, %land.lhs.true241.no_emulation_crit_edge, %land.lhs.true236.no_emulation_crit_edge, %land.lhs.true231.no_emulation_crit_edge, %land.lhs.true226.no_emulation_crit_edge, %if.then163.no_emulation_crit_edge, %if.else161.no_emulation_crit_edge, %if.end150.no_emulation_crit_edge, %if.end39.no_emulation_crit_edge, %if.then19.no_emulation_crit_edge, %if.end9.no_emulation_crit_edge
  %call259 = tail call i32 @pci_generic_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #5
  br label %cleanup260

cleanup260:                                       ; preds = %no_emulation, %if.then248, %if.then243, %if.then238, %if.then233, %if.then228, %if.end223, %if.then199, %if.end195, %if.then175.cleanup260_crit_edge, %if.then156, %if.then148, %if.then140, %if.then132, %if.then124, %if.then108, %if.end104, %if.then84.cleanup260_crit_edge, %if.then81, %if.then59.cleanup260_crit_edge, %if.end33.cleanup260_crit_edge, %if.then32, %if.end22, %if.end.cleanup260_crit_edge, %entry.cleanup260_crit_edge
  %retval.2 = phi i32 [ %call259, %no_emulation ], [ %call23, %if.end22 ], [ 0, %if.then32 ], [ 134, %entry.cleanup260_crit_edge ], [ 134, %if.end.cleanup260_crit_edge ], [ 134, %if.end33.cleanup260_crit_edge ], [ 134, %if.then84.cleanup260_crit_edge ], [ 134, %if.then59.cleanup260_crit_edge ], [ 0, %if.then81 ], [ 0, %if.end104 ], [ 0, %if.then108 ], [ %call125, %if.then124 ], [ %call133, %if.then132 ], [ %call141, %if.then140 ], [ %call149, %if.then148 ], [ %call157, %if.then156 ], [ 134, %if.then175.cleanup260_crit_edge ], [ 0, %if.end195 ], [ 0, %if.then199 ], [ 0, %if.end223 ], [ 0, %if.then228 ], [ 0, %if.then233 ], [ 0, %if.then238 ], [ 0, %if.then243 ], [ 0, %if.then248 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thunder_ecam_config_write(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %where, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %0)
  %1 = icmp ult i32 %0, 28
  %2 = add i32 %where, -420
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %2)
  %3 = icmp ult i32 %2, 24
  %or.cond = or i1 %1, %3
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @pci_generic_config_write(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @thunder_ecam_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @thunder_ecam_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @thunder_ecam_p2_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %where, -4
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and, label %sw.default [
    i32 168, label %entry.sw.epilog_crit_edge
    i32 188, label %entry.sw.epilog_crit_edge21
    i32 208, label %entry.sw.epilog_crit_edge22
    i32 228, label %entry.sw.epilog_crit_edge23
  ]

entry.sw.epilog_crit_edge23:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge21:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @pci_generic_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #5
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge21, %entry.sw.epilog_crit_edge22, %entry.sw.epilog_crit_edge23
  %ops = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 9
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 8
  %map_bus = getelementptr inbounds %struct.pci_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %map_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map_bus, align 4
  %call1 = tail call ptr %4(ptr noundef %bus, i32 noundef %devfn, i32 noundef %and) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call1) #5, !srcloc !35
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %and.i = shl i32 %where, 3
  %mul.i = and i32 %and.i, 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_val.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@thunder_ecam_p2_config_read, %do.end.i)) #5
          to label %if.then.i [label %do.end.i], !srcloc !39

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_val.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.9, i32 noundef %and, i32 noundef %6) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %shr.i = lshr i32 %6, %mul.i
  %7 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %size, label %do.end.i.set_val.exit_crit_edge [
    i32 1, label %if.then5.i
    i32 2, label %if.then8.i
  ]

do.end.i.set_val.exit_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_val.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and6.i = and i32 %shr.i, 255
  br label %set_val.exit

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and9.i = and i32 %shr.i, 65535
  br label %set_val.exit

set_val.exit:                                     ; preds = %if.then8.i, %if.then5.i, %do.end.i.set_val.exit_crit_edge
  %v.addr.0.i = phi i32 [ %and6.i, %if.then5.i ], [ %and9.i, %if.then8.i ], [ %shr.i, %do.end.i.set_val.exit_crit_edge ]
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %v.addr.0.i, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %set_val.exit, %sw.epilog.cleanup_crit_edge, %sw.default
  %retval.0 = phi i32 [ %call, %sw.default ], [ 0, %set_val.exit ], [ 134, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_val(i32 noundef %v, i32 noundef %where, i32 noundef %size, ptr nocapture noundef writeonly %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %where, 3
  %mul = and i32 %and, 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_val.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_val, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !39

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and4 = and i32 %where, -4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_val.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.9, i32 noundef %and4, i32 noundef %v) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shr = lshr i32 %v, %mul
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %size, label %do.end.if.end11_crit_edge [
    i32 1, label %if.then5
    i32 2, label %if.then8
  ]

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %and6 = and i32 %shr, 255
  br label %if.end11

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %and9 = and i32 %shr, 65535
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then5, %do.end.if.end11_crit_edge
  %v.addr.0 = phi i32 [ %and6, %if.then5 ], [ %and9, %if.then8 ], [ %shr, %do.end.if.end11_crit_edge ]
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %v.addr.0, ptr %val, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_ea_bar(i32 noundef %e0, i32 noundef %bar, ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr nocapture noundef writeonly %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %where, 2
  %0 = and i32 %and, 3
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %0, label %entry.unreachabledefault [
    i32 0, label %if.then
    i32 1, label %if.then2
    i32 2, label %if.then10
    i32 3, label %if.then38
  ]

if.then:                                          ; preds = %entry
  %and.i = shl i32 %where, 3
  %mul.i = and i32 %and.i, 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_val.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ea_bar, %do.end.i)) #5
          to label %if.then.i [label %do.end.i], !srcloc !39

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %and4.i = and i32 %where, -4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_val.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.9, i32 noundef %and4.i, i32 noundef %e0) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %shr.i = lshr i32 %e0, %mul.i
  %2 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %size, label %do.end.i.cleanup51.sink.split_crit_edge [
    i32 1, label %if.then5.i
    i32 2, label %if.then8.i
  ]

do.end.i.cleanup51.sink.split_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup51.sink.split

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and6.i = and i32 %shr.i, 255
  br label %cleanup51.sink.split

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and9.i = and i32 %shr.i, 65535
  br label %cleanup51.sink.split

if.then2:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 9
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 8
  %map_bus = getelementptr inbounds %struct.pci_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %map_bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map_bus, align 4
  %call = tail call ptr %6(ptr noundef %bus, i32 noundef %devfn, i32 noundef %bar) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2.cleanup51_crit_edge, label %if.end4

if.then2.cleanup51_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup51

if.end4:                                          ; preds = %if.then2
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %8 = and i32 %7, -251658241
  %9 = or i32 %8, 33554432
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %and.i89 = shl i32 %where, 3
  %mul.i90 = and i32 %and.i89, 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_val.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ea_bar, %do.end.i94)) #5
          to label %if.then.i92 [label %do.end.i94], !srcloc !39

if.then.i92:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %and4.i91 = and i32 %where, -4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_val.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.9, i32 noundef %and4.i91, i32 noundef %10) #5
  br label %do.end.i94

do.end.i94:                                       ; preds = %if.then.i92, %if.end4
  %shr.i93 = lshr i32 %10, %mul.i90
  %11 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %size, label %do.end.i94.cleanup51.sink.split_crit_edge [
    i32 1, label %if.then5.i96
    i32 2, label %if.then8.i98
  ]

do.end.i94.cleanup51.sink.split_crit_edge:        ; preds = %do.end.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup51.sink.split

if.then5.i96:                                     ; preds = %do.end.i94
  call void @__sanitizer_cov_trace_pc() #7
  %and6.i95 = and i32 %shr.i93, 255
  br label %cleanup51.sink.split

if.then8.i98:                                     ; preds = %do.end.i94
  call void @__sanitizer_cov_trace_pc() #7
  %and9.i97 = and i32 %shr.i93, 65535
  br label %cleanup51.sink.split

if.then10:                                        ; preds = %entry
  %ops11 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 9
  %12 = ptrtoint ptr %ops11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops11, align 8
  %map_bus12 = getelementptr inbounds %struct.pci_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %map_bus12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map_bus12, align 4
  %call13 = tail call ptr %15(ptr noundef %bus, i32 noundef %devfn, i32 noundef %bar) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then10.cleanup51_crit_edge, label %if.end16

if.then10.cleanup51_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup51

if.end16:                                         ; preds = %if.then10
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call13) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call13, i32 -1) #5, !srcloc !47
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call13) #5, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call13, i32 %16) #5, !srcloc !47
  %18 = and i32 %17, -251658241
  %19 = xor i32 %18, -50331649
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %and.i101 = shl i32 %where, 3
  %mul.i102 = and i32 %and.i101, 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_val.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ea_bar, %do.end.i106)) #5
          to label %if.then.i104 [label %do.end.i106], !srcloc !39

if.then.i104:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %and4.i103 = and i32 %where, -4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_val.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.9, i32 noundef %and4.i103, i32 noundef %20) #5
  br label %do.end.i106

do.end.i106:                                      ; preds = %if.then.i104, %if.end16
  %shr.i105 = lshr i32 %20, %mul.i102
  %21 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %size, label %do.end.i106.cleanup51.sink.split_crit_edge [
    i32 1, label %if.then5.i108
    i32 2, label %if.then8.i110
  ]

do.end.i106.cleanup51.sink.split_crit_edge:       ; preds = %do.end.i106
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup51.sink.split

if.then5.i108:                                    ; preds = %do.end.i106
  call void @__sanitizer_cov_trace_pc() #7
  %and6.i107 = and i32 %shr.i105, 255
  br label %cleanup51.sink.split

if.then8.i110:                                    ; preds = %do.end.i106
  call void @__sanitizer_cov_trace_pc() #7
  %and9.i109 = and i32 %shr.i105, 65535
  br label %cleanup51.sink.split

if.then38:                                        ; preds = %entry
  %ops39 = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 9
  %22 = ptrtoint ptr %ops39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops39, align 8
  %map_bus40 = getelementptr inbounds %struct.pci_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %map_bus40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map_bus40, align 4
  %add = add i32 %bar, 4
  %call41 = tail call ptr %25(ptr noundef %bus, i32 noundef %devfn, i32 noundef %add) #5
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.then38.cleanup51_crit_edge, label %if.end44

if.then38.cleanup51_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup51

if.end44:                                         ; preds = %if.then38
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call41) #5, !srcloc !35
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  %and.i113 = shl i32 %where, 3
  %mul.i114 = and i32 %and.i113, 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_val.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ea_bar, %do.end.i118)) #5
          to label %if.then.i116 [label %do.end.i118], !srcloc !39

if.then.i116:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %and4.i115 = and i32 %where, -4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_val.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.9, i32 noundef %and4.i115, i32 noundef %27) #5
  br label %do.end.i118

do.end.i118:                                      ; preds = %if.then.i116, %if.end44
  %shr.i117 = lshr i32 %27, %mul.i114
  %28 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %size, label %do.end.i118.cleanup51.sink.split_crit_edge [
    i32 1, label %if.then5.i120
    i32 2, label %if.then8.i122
  ]

do.end.i118.cleanup51.sink.split_crit_edge:       ; preds = %do.end.i118
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup51.sink.split

if.then5.i120:                                    ; preds = %do.end.i118
  call void @__sanitizer_cov_trace_pc() #7
  %and6.i119 = and i32 %shr.i117, 255
  br label %cleanup51.sink.split

if.then8.i122:                                    ; preds = %do.end.i118
  call void @__sanitizer_cov_trace_pc() #7
  %and9.i121 = and i32 %shr.i117, 65535
  br label %cleanup51.sink.split

entry.unreachabledefault:                         ; preds = %entry
  unreachable

cleanup51.sink.split:                             ; preds = %if.then8.i122, %if.then5.i120, %do.end.i118.cleanup51.sink.split_crit_edge, %if.then8.i110, %if.then5.i108, %do.end.i106.cleanup51.sink.split_crit_edge, %if.then8.i98, %if.then5.i96, %do.end.i94.cleanup51.sink.split_crit_edge, %if.then8.i, %if.then5.i, %do.end.i.cleanup51.sink.split_crit_edge
  %v.addr.0.i111.sink = phi i32 [ %and6.i, %if.then5.i ], [ %and9.i, %if.then8.i ], [ %shr.i, %do.end.i.cleanup51.sink.split_crit_edge ], [ %and6.i95, %if.then5.i96 ], [ %and9.i97, %if.then8.i98 ], [ %shr.i93, %do.end.i94.cleanup51.sink.split_crit_edge ], [ %and6.i107, %if.then5.i108 ], [ %and9.i109, %if.then8.i110 ], [ %shr.i105, %do.end.i106.cleanup51.sink.split_crit_edge ], [ %and6.i119, %if.then5.i120 ], [ %and9.i121, %if.then8.i122 ], [ %shr.i117, %do.end.i118.cleanup51.sink.split_crit_edge ]
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %v.addr.0.i111.sink, ptr %val, align 4
  br label %cleanup51

cleanup51:                                        ; preds = %cleanup51.sink.split, %if.then38.cleanup51_crit_edge, %if.then10.cleanup51_crit_edge, %if.then2.cleanup51_crit_edge
  %retval.1 = phi i32 [ 134, %if.then2.cleanup51_crit_edge ], [ 134, %if.then10.cleanup51_crit_edge ], [ 134, %if.then38.cleanup51_crit_edge ], [ 0, %cleanup51.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_common_probe(ptr noundef) #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @pci_thunder_ecam_ops, !1, !"pci_thunder_ecam_ops", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pci-thunder-ecam.c", i32 334, i32 27}
!2 = !{ptr @__initcall__kmod_pci_thunder_ecam__238_360_thunder_ecam_driver_init6, !3, !"__initcall__kmod_pci_thunder_ecam__238_360_thunder_ecam_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pci-thunder-ecam.c", i32 360, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pci-thunder-ecam.c", i32 177, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @thunder_ecam_config_read.__UNIQUE_ID_ddebug237, !5, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/pci-thunder-ecam.c", i32 207, i32 5}
!12 = !{ptr @thunder_ecam_config_read._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @thunder_ecam_config_read._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pci-thunder-ecam.c", i32 263, i32 5}
!16 = !{ptr @thunder_ecam_config_read._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @thunder_ecam_config_read._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pci-thunder-ecam.c", i32 20, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @set_val.__UNIQUE_ID_ddebug236, !19, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!22 = !{ptr @thunder_ecam_driver, !23, !"thunder_ecam_driver", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/pci-thunder-ecam.c", i32 352, i32 31}
!24 = !{ptr @thunder_ecam_of_match, !25, !"thunder_ecam_of_match", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/pci-thunder-ecam.c", i32 344, i32 34}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 5078143}
!36 = !{i64 2154525142}
!37 = !{i64 2154525581}
!38 = !{i64 2154526025}
!39 = !{i64 2148699084, i64 2148699089, i64 2148699102, i64 2148699146, i64 2148699180, i64 2148699201}
!40 = !{i64 2154529344}
!41 = !{i64 2154529788}
!42 = !{i64 2154531795}
!43 = !{i64 2154524656}
!44 = !{i64 2154522059}
!45 = !{i64 2154522519}
!46 = !{i64 2154522731}
!47 = !{i64 5077725}
!48 = !{i64 2154523368}
!49 = !{i64 2154523579}
!50 = !{i64 2154524207}
