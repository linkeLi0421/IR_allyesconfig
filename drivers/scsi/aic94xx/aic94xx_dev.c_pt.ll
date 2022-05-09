; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic94xx/aic94xx_dev.c_pt.bc'
source_filename = "../drivers/scsi/aic94xx/aic94xx_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.domain_device = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, [8 x i8], [3 x i8], [32 x i8], [101 x i8], %union.anon.79, ptr, i32, %struct.kref, [116 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { %struct.sata_device }
%struct.sata_device = type { i32, i8, ptr, ptr, [112 x i8], %struct.smp_resp, [24 x i8], [44 x i8] }
%struct.smp_resp = type { i8, i8, i8, i8, %union.anon.81 }
%union.anon.81 = type { %struct.report_phy_sata_resp }
%struct.report_phy_sata_resp = type { [5 x i8], i8, i8, i8, i32, [8 x i8], %struct.dev_to_host_fis, i32, [8 x i8], i32 }
%struct.dev_to_host_fis = type { i8, i8, i8, i8, i8, %union.anon.82, %union.anon.83, i8, i8, i8, i8, i8, %union.anon.84, i8, i8, i8, i32 }
%union.anon.82 = type { i8 }
%union.anon.83 = type { i8 }
%union.anon.84 = type { i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_core = type { ptr }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.80, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.80 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pm_message = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.asd_ha_struct = type { ptr, ptr, %struct.sas_ha_struct, i8, i32, %struct.spinlock, [2 x %struct.asd_ha_addrspace], %struct.hw_profile, [8 x %struct.asd_phy], %struct.spinlock, [8 x %struct.asd_port], [8 x %struct.asd_sas_port], ptr, %struct.asd_seq_data, i32, ptr }
%struct.asd_ha_addrspace = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.hw_profile = type { %struct.bios_struct, %struct.unit_element_struct, %struct.flash_struct, [8 x i8], [13 x i8], i8, [8 x %struct.asd_phy_desc], i32, ptr, i32, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32 }
%struct.bios_struct = type { i32, i8, i8, i32 }
%struct.unit_element_struct = type { i16, i16, ptr }
%struct.flash_struct = type { i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.asd_phy_desc = type { [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asd_phy = type { %struct.asd_sas_phy, ptr, ptr, ptr, ptr, [1068 x i8] }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.asd_port = type { [8 x i8], [8 x i8], i32, i32 }
%struct.asd_seq_data = type { %struct.spinlock, i16, i32, %struct.list_head, i32, %struct.asd_dma_tok, %struct.spinlock, ptr, ptr, i32, %struct.tasklet_struct, ptr, ptr, i32, i32, i32, ptr, i32, ptr }
%struct.asd_dma_tok = type { ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.sas_end_device = type { %struct.sas_rphy, i8, i16, i16 }
%struct.sas_rphy = type { %struct.device, %struct.sas_identify, %struct.list_head, ptr, i32 }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 7, i64 8]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asd_set_dmamode(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldd_ha, align 4
  %ap.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 2
  %6 = ptrtoint ptr %ap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ap.i, align 8
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %8 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lldd_dev, align 128
  %10 = ptrtoint ptr %9 to i32
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_type, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %entry.if.end30_crit_edge [
    i32 5, label %entry.if.then_crit_edge
    i32 8, label %entry.if.then_crit_edge46
  ]

entry.if.then_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge46
  %arrayidx = getelementptr %struct.ata_port, ptr %7, i32 0, i32 25, i32 14, i32 0, i32 25, i32 0, i32 38
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 8
  %16 = and i16 %15, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  br i1 %tobool.not, label %if.then.if.end11_crit_edge, label %if.then3

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %17 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 14, i32 0, i32 25
  %arrayidx4 = getelementptr [256 x i16], ptr %17, i32 0, i32 75
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx4, align 2
  %20 = and i16 %19, 31
  %narrow = add nuw nsw i16 %20, 1
  %add = zext i16 %narrow to i32
  br label %if.end11

if.end11:                                         ; preds = %if.then3, %if.then.if.end11_crit_edge
  %qdepth.0 = phi i32 [ %add, %if.then3 ], [ 0, %if.then.if.end11_crit_edge ]
  %conv7 = trunc i32 %10 to i16
  %sh_prom = zext i32 %qdepth.0 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %21 = trunc i64 %notmask to i32
  %conv8 = xor i32 %21, -1
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 424) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv7) #4
  tail call void @asd_write_reg_dword(ptr noundef %5, i32 noundef -1207957448, i32 noundef %conv8) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 436) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv7) #4
  %call.i.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %5, i32 noundef -1207957448) #4
  %22 = and i16 %call.i.i, -256
  %23 = trunc i32 %qdepth.0 to i16
  %or11.i = or i16 %22, %23
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 436) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv7) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext %or11.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qdepth.0)
  %cmp12.not = icmp eq i32 %qdepth.0, 0
  br i1 %cmp12.not, label %if.end11.if.end30_crit_edge, label %if.then14

if.end11.if.end30_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then14:                                        ; preds = %if.end11
  %call15 = tail call fastcc i32 @asd_init_sata_tag_ddb(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.then14.if.end30_crit_edge, label %if.then18

if.then14.if.end30_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %ap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ap.i, align 8
  %lock = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lock, align 8
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #4
  %flags26 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 14, i32 0, i32 3
  %28 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags26, align 4
  %or = or i32 %29, 8192
  store i32 %or, ptr %flags26, align 4
  %30 = ptrtoint ptr %ap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ap.i, align 8
  %lock28 = getelementptr inbounds %struct.ata_port, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %lock28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock28, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %call23) #4
  br label %if.end30

if.end30:                                         ; preds = %if.then18, %if.then14.if.end30_crit_edge, %if.end11.if.end30_crit_edge, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asd_ddbsite_write_byte(ptr noundef %asd_ha, i16 noundef zeroext %ddb_site_no, i16 noundef zeroext %offs, i8 noundef zeroext %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = add i16 %offs, 384
  %add.i = and i16 %0, -2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext %add.i) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext %ddb_site_no) #4
  %call.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448) #4
  %1 = and i16 %offs, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv4 = zext i8 %val to i16
  %shl = shl nuw i16 %conv4, 8
  %2 = and i16 %call.i, 255
  %or = or i16 %2, %shl
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = and i16 %call.i, -256
  %conv10 = zext i8 %val to i16
  %or11 = or i16 %3, %conv10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rval.0 = phi i16 [ %or, %if.then ], [ %or11, %if.else ]
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext %add.i) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext %ddb_site_no) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext %rval.0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_init_sata_tag_ddb(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldd_ha, align 4
  %call = tail call fastcc i32 @asd_get_ddb(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %conv = trunc i32 %call to i16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.015 = phi i32 [ 0, %for.cond.preheader ], [ %add, %for.body.for.body_crit_edge ]
  %conv2 = trunc i32 %i.015 to i16
  %add.i = add nuw nsw i16 %conv2, 384
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext %add.i) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext -1) #4
  %add = add nuw nsw i32 %i.015, 2
  %cmp1 = icmp ult i32 %i.015, 62
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldd_dev, align 128
  %8 = ptrtoint ptr %7 to i32
  %conv3 = trunc i32 %8 to i16
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 420) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv3) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext %conv) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_dev_found(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldd_ha, align 4
  %ddb_lock = getelementptr inbounds %struct.asd_ha_struct, ptr %5, i32 0, i32 7, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ddb_lock) #4
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %7, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %call.i = tail call fastcc i32 @asd_init_target_ddb(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port, align 4
  %ha.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %10, i32 0, i32 21
  %11 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ha.i.i, align 4
  %lldd_ha.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %lldd_ha.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lldd_ha.i.i, align 4
  %call.i.i = tail call fastcc i32 @asd_get_ddb(ptr noundef %14) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i
  %conv.i.i = trunc i32 %call.i.i to i16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.015.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %conv2.i.i = trunc i32 %i.015.i.i to i16
  %add.i.i.i = add nuw nsw i16 %conv2.i.i, 384
  tail call void @asd_write_reg_word(ptr noundef %14, i32 noundef -1207957464, i16 noundef zeroext %add.i.i.i) #4
  tail call void @asd_write_reg_word(ptr noundef %14, i32 noundef -1207957458, i16 noundef zeroext %conv.i.i) #4
  tail call void @asd_write_reg_word(ptr noundef %14, i32 noundef -1207957448, i16 noundef zeroext -1) #4
  %add.i.i = add nuw nsw i32 %i.015.i.i, 2
  %cmp1.i.i = icmp ult i32 %i.015.i.i, 30
  br i1 %cmp1.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %asd_init_sata_pm_table_ddb.exit.thread.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

asd_init_sata_pm_table_ddb.exit.thread.i:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %lldd_dev.i.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %15 = ptrtoint ptr %lldd_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lldd_dev.i.i, align 128
  %17 = ptrtoint ptr %16 to i32
  %conv3.i.i = trunc i32 %17 to i16
  tail call void @asd_write_reg_word(ptr noundef %14, i32 noundef -1207957464, i16 noundef zeroext 420) #4
  tail call void @asd_write_reg_word(ptr noundef %14, i32 noundef -1207957458, i16 noundef zeroext %conv3.i.i) #4
  tail call void @asd_write_reg_word(ptr noundef %14, i32 noundef -1207957448, i16 noundef zeroext %conv.i.i) #4
  br label %sw.epilog

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port, align 4
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ha.i, align 4
  %lldd_ha.i = getelementptr inbounds %struct.sas_ha_struct, ptr %21, i32 0, i32 21
  %22 = ptrtoint ptr %lldd_ha.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lldd_ha.i, align 4
  %lldd_dev.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %24 = ptrtoint ptr %lldd_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lldd_dev.i, align 128
  %26 = ptrtoint ptr %25 to i32
  tail call fastcc void @asd_free_ddb(ptr noundef %23, i32 noundef %26) #4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port, align 4
  %ha.i19 = getelementptr inbounds %struct.asd_sas_port, ptr %28, i32 0, i32 21
  %29 = ptrtoint ptr %ha.i19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ha.i19, align 4
  %lldd_ha.i20 = getelementptr inbounds %struct.sas_ha_struct, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %lldd_ha.i20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lldd_ha.i20, align 4
  %call.i21 = tail call fastcc i32 @asd_get_ddb(ptr noundef %32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp.i = icmp slt i32 %call.i21, 0
  br i1 %cmp.i, label %sw.bb6.sw.epilog_crit_edge, label %if.end.i25

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.i25:                                       ; preds = %sw.bb6
  tail call fastcc void @asd_set_ddb_type(ptr noundef %dev) #4
  %port_no.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 1
  %33 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port_no.i, align 4
  %shl.i = shl i8 %34, 4
  %or.i = or i8 %shl.i, 2
  %conv2.i = trunc i32 %call.i21 to i16
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957464, i16 noundef zeroext 412) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957458, i16 noundef zeroext %conv2.i) #4
  %call.i.i.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %32, i32 noundef -1207957448) #4
  %conv4.i.i = zext i8 %or.i to i16
  %shl.i.i = shl nuw i16 %conv4.i.i, 8
  %35 = and i16 %call.i.i.i, 255
  %or.i.i = or i16 %35, %shl.i.i
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957464, i16 noundef zeroext 412) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957458, i16 noundef zeroext %conv2.i) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957448, i16 noundef zeroext %or.i.i) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957464, i16 noundef zeroext 420) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957458, i16 noundef zeroext %conv2.i) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957448, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957464, i16 noundef zeroext 422) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957458, i16 noundef zeroext %conv2.i) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957448, i16 noundef zeroext -1) #4
  tail call fastcc void @asd_init_sata(ptr noundef %dev) #4
  %parent.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 6
  %36 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent.i, align 64
  %lldd_dev.i22 = getelementptr inbounds %struct.domain_device, ptr %37, i32 0, i32 20
  %38 = ptrtoint ptr %lldd_dev.i22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lldd_dev.i22, align 128
  %40 = ptrtoint ptr %39 to i32
  %conv7.i = trunc i32 %40 to i16
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957464, i16 noundef zeroext 430) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957458, i16 noundef zeroext %conv2.i) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957448, i16 noundef zeroext %conv7.i) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957464, i16 noundef zeroext 420) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957458, i16 noundef zeroext %conv7.i) #4
  %call.i.i23 = tail call zeroext i16 @asd_read_reg_word(ptr noundef %32, i32 noundef -1207957448) #4
  %41 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %port_no.i, align 4
  %conv13.i = zext i8 %42 to i16
  %add.i.i24 = add nuw nsw i16 %conv13.i, 384
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957464, i16 noundef zeroext %add.i.i24) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957458, i16 noundef zeroext %call.i.i23) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957448, i16 noundef zeroext %conv2.i) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957464, i16 noundef zeroext 436) #4
  tail call void @asd_write_reg_word(ptr noundef %32, i32 noundef -1207957458, i16 noundef zeroext %conv2.i) #4
  %call.i.i56.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %32, i32 noundef -1207957448) #4
  %conv9.i.i = trunc i16 %call.i.i56.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv9.i.i)
  %cmp18.not.i = icmp eq i8 %conv9.i.i, 0
  br i1 %cmp18.not.i, label %if.end.i25.sw.epilog_crit_edge, label %if.then20.i

if.end.i25.sw.epilog_crit_edge:                   ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then20.i:                                      ; preds = %if.end.i25
  %call21.i = tail call fastcc i32 @asd_init_sata_tag_ddb(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.then24.i, label %if.then20.i.sw.epilog_crit_edge

if.then20.i.sw.epilog_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then24.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @asd_free_ddb(ptr noundef %32, i32 noundef %call.i21) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %tproto = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 13
  %43 = ptrtoint ptr %tproto to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tproto, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not = icmp eq i32 %44, 0
  br i1 %tobool.not, label %sw.default.sw.epilog_crit_edge, label %if.then

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call fastcc i32 @asd_init_target_ddb(ptr noundef %dev)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default.sw.epilog_crit_edge, %if.then24.i, %if.then20.i.sw.epilog_crit_edge, %if.end.i25.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %if.then3.i, %asd_init_sata_pm_table_ddb.exit.thread.i, %sw.bb.sw.epilog_crit_edge
  %res.0 = phi i32 [ %call8, %if.then ], [ %call.i, %sw.bb.sw.epilog_crit_edge ], [ %call.i.i, %if.then3.i ], [ 0, %asd_init_sata_pm_table_ddb.exit.thread.i ], [ %call21.i, %if.then24.i ], [ %call.i21, %sw.bb6.sw.epilog_crit_edge ], [ 0, %if.then20.i.sw.epilog_crit_edge ], [ 0, %if.end.i25.sw.epilog_crit_edge ], [ -19, %sw.default.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ddb_lock, i32 noundef %call2) #4
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_init_target_ddb(ptr nocapture noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldd_ha, align 4
  %call = tail call fastcc i32 @asd_get_ddb(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = inttoptr i32 %call to ptr
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %7 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %lldd_dev, align 128
  %conv = trunc i32 %call to i16
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 384) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  %call.i.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %5, i32 noundef -1207957448) #4
  %8 = and i16 %call.i.i, -256
  %or11.i = or i16 %8, 129
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 384) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext %or11.i) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 384) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  %call.i.i199 = tail call zeroext i16 @asd_read_reg_word(ptr noundef %5, i32 noundef -1207957448) #4
  %9 = and i16 %call.i.i199, 255
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 384) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext %9) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 386) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext -1) #4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0226 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = trunc i32 %i.0226 to i16
  %arrayidx = getelementptr %struct.domain_device, ptr %dev, i32 0, i32 15, i32 %i.0226
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = add i16 %10, 388
  %add.i.i = and i16 %13, -2
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext %add.i.i) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  %call.i.i200 = tail call zeroext i16 @asd_read_reg_word(ptr noundef %5, i32 noundef -1207957448) #4
  %14 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp eq i16 %14, 0
  %conv4.i = zext i8 %12 to i16
  %shl.i = shl nuw i16 %conv4.i, 8
  %15 = and i16 %call.i.i200, 255
  %or.i = or i16 %15, %shl.i
  %16 = and i16 %call.i.i200, -256
  %or11.i201 = or i16 %16, %conv4.i
  %rval.0.i = select i1 %tobool.not.i, i16 %or11.i201, i16 %or.i
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext %add.i.i) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext %rval.0.i) #4
  %inc = add nuw nsw i32 %i.0226, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 396) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext -1) #4
  tail call fastcc void @asd_set_ddb_type(ptr noundef %dev)
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port, align 4
  %phy_mask = getelementptr inbounds %struct.asd_sas_port, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %phy_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy_mask, align 4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 412) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  %call.i.i202 = tail call zeroext i16 @asd_read_reg_word(ptr noundef %5, i32 noundef -1207957448) #4
  %21 = and i16 %call.i.i202, -256
  %22 = trunc i32 %20 to i16
  %conv10.i203 = and i16 %22, 255
  %or11.i204 = or i16 %21, %conv10.i203
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 412) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext %or11.i204) #4
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port, align 4
  %oob_mode = getelementptr inbounds %struct.asd_sas_port, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %oob_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %oob_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp12.not = icmp eq i32 %26, 1
  br i1 %cmp12.not, label %for.end.if.end63_crit_edge, label %if.then14

for.end.if.end63_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.then14:                                        ; preds = %for.end
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %27 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %28)
  %cmp17 = icmp eq i32 %28, 5
  br i1 %cmp17, label %if.then14.if.then19_crit_edge, label %lor.lhs.false

if.then14.if.then19_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

lor.lhs.false:                                    ; preds = %if.then14
  %tproto = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 13
  %29 = ptrtoint ptr %tproto to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tproto, align 8
  %and = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %if.then14.if.then19_crit_edge
  %rps_resp20 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 5
  %31 = ptrtoint ptr %rps_resp20 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rps_resp20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %32)
  %cmp22 = icmp eq i8 %32, 65
  br i1 %cmp22, label %land.lhs.true, label %if.then19.if.end63_crit_edge

if.then19.if.end63_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

land.lhs.true:                                    ; preds = %if.then19
  %function = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %function, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %34)
  %cmp25 = icmp eq i8 %34, 18
  br i1 %cmp25, label %land.lhs.true27, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

land.lhs.true27:                                  ; preds = %land.lhs.true
  %result = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 5, i32 2
  %35 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %result, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp29 = icmp eq i8 %36, 0
  br i1 %cmp29, label %if.then31, label %land.lhs.true27.if.end63_crit_edge

land.lhs.true27.if.end63_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.then31:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  %affil_valid = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 5, i32 4, i32 0, i32 3
  %37 = ptrtoint ptr %affil_valid to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %affil_valid, align 1
  %bf.clear = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool32.not = icmp eq i8 %bf.clear, 0
  %spec.select = select i1 %tobool32.not, i8 1, i8 33
  %38 = shl i8 %bf.load, 5
  %39 = and i8 %38, 64
  %40 = or i8 %spec.select, %39
  br label %if.end63

if.else:                                          ; preds = %lor.lhs.false
  %parent = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 6
  %41 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent, align 64
  %tobool50.not = icmp eq ptr %42, null
  %43 = and i32 %28, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %44 = icmp eq i32 %43, 2
  %or.cond = select i1 %tobool50.not, i1 %44, i1 false
  br i1 %or.cond, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @asd_ddbsite_write_byte(ptr noundef %5, i16 noundef zeroext %conv, i16 noundef zeroext 40, i8 noundef zeroext 4)
  br label %if.end60

if.else57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %pathways = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 5
  %45 = ptrtoint ptr %pathways to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pathways, align 4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 424) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  %call.i.i207 = tail call zeroext i16 @asd_read_reg_word(ptr noundef %5, i32 noundef -1207957448) #4
  %47 = and i16 %call.i.i207, -256
  %48 = trunc i32 %46 to i16
  %conv10.i208 = and i16 %48, 255
  %or11.i209 = or i16 %47, %conv10.i208
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 424) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext %or11.i209) #4
  br label %if.end60

if.end60:                                         ; preds = %if.else57, %if.then55
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 426) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  %call.i.i212 = tail call zeroext i16 @asd_read_reg_word(ptr noundef %5, i32 noundef -1207957448) #4
  %49 = and i16 %call.i.i212, -256
  %or11.i213 = or i16 %49, 1
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 426) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext %or11.i213) #4
  br label %if.end63

if.end63:                                         ; preds = %if.end60, %if.then31, %land.lhs.true27.if.end63_crit_edge, %land.lhs.true.if.end63_crit_edge, %if.then19.if.end63_crit_edge, %for.end.if.end63_crit_edge
  %flags.2 = phi i8 [ 5, %if.end60 ], [ 0, %for.end.if.end63_crit_edge ], [ 1, %land.lhs.true27.if.end63_crit_edge ], [ 1, %land.lhs.true.if.end63_crit_edge ], [ 1, %if.then19.if.end63_crit_edge ], [ %40, %if.then31 ]
  %dev_type64 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %50 = ptrtoint ptr %dev_type64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dev_type64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %51)
  %cmp65 = icmp eq i32 %51, 7
  %52 = or i8 %flags.2, -128
  %spec.select197 = select i1 %cmp65, i8 %52, i8 %flags.2
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 412) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  %call.i.i216 = tail call zeroext i16 @asd_read_reg_word(ptr noundef %5, i32 noundef -1207957448) #4
  %conv4.i217 = zext i8 %spec.select197 to i16
  %shl.i218 = shl nuw i16 %conv4.i217, 8
  %53 = and i16 %call.i.i216, 255
  %or.i219 = or i16 %53, %shl.i218
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 412) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext %or.i219) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 414) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  %call.i.i222 = tail call zeroext i16 @asd_read_reg_word(ptr noundef %5, i32 noundef -1207957448) #4
  %54 = and i16 %call.i.i222, 255
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 414) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext %54) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 416) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 418) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 420) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext -1) #4
  %55 = ptrtoint ptr %dev_type64 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dev_type64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %56)
  %cmp86 = icmp eq i32 %56, 5
  br i1 %cmp86, label %if.end63.if.then92_crit_edge, label %lor.lhs.false88

if.end63.if.then92_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then92

lor.lhs.false88:                                  ; preds = %if.end63
  %tproto73 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 13
  %57 = ptrtoint ptr %tproto73 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tproto73, align 8
  %and90 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %lor.lhs.false88.if.end98_crit_edge, label %lor.lhs.false88.if.then92_crit_edge

lor.lhs.false88.if.then92_crit_edge:              ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then92

lor.lhs.false88.if.end98_crit_edge:               ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end98

if.then92:                                        ; preds = %lor.lhs.false88.if.then92_crit_edge, %if.end63.if.then92_crit_edge
  tail call fastcc void @asd_init_sata(ptr noundef %dev)
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %lor.lhs.false88.if.end98_crit_edge
  %59 = ptrtoint ptr %dev_type64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dev_type64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp100 = icmp eq i32 %60, 1
  br i1 %cmp100, label %if.then102, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #6
  %rphy = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 14
  %61 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rphy, align 4
  %I_T_nexus_loss_timeout = getelementptr inbounds %struct.sas_end_device, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %I_T_nexus_loss_timeout to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %I_T_nexus_loss_timeout, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %cmp104.not = icmp eq i16 %64, 0
  %65 = tail call i16 @llvm.umin.i16(i16 %64, i16 2000)
  %.sink = select i1 %cmp104.not, i16 2000, i16 %65
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 442) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext %.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %if.end98.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end98.cleanup_crit_edge ], [ 0, %if.then102 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asd_dev_gone(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldd_ha, align 4
  %ddb_lock = getelementptr inbounds %struct.asd_ha_struct, ptr %5, i32 0, i32 7, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ddb_lock) #4
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldd_dev, align 128
  %8 = ptrtoint ptr %7 to i32
  %conv5 = trunc i32 %8 to i16
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 420) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv5) #4
  %call.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %5, i32 noundef -1207957448) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i)
  %cmp8.not = icmp eq i16 %call.i, -1
  br i1 %cmp8.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv7 = zext i16 %call.i to i32
  tail call fastcc void @asd_free_ddb(ptr noundef %5, i32 noundef %conv7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @asd_free_ddb(ptr noundef %5, i32 noundef %8)
  %9 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %lldd_dev, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ddb_lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asd_free_ddb(ptr noundef %asd_ha, i32 noundef %ddb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ddb)
  %tobool.not = icmp eq i32 %ddb, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %ddb)
  %cmp = icmp sgt i32 %ddb, 65534
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %ddb to i16
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 398) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  %call.i.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448) #4
  %or.i = or i16 %call.i.i, -256
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 398) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext %or.i) #4
  %ddb_bitmap = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 12
  %0 = ptrtoint ptr %ddb_bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddb_bitmap, align 4
  tail call void @_clear_bit(i32 noundef %ddb, ptr noundef %1) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_write_reg_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_write_reg_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_get_ddb(ptr noundef %asd_ha) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ddb_bitmap = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 12
  %0 = ptrtoint ptr %ddb_bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddb_bitmap, align 4
  %max_ddbs = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 9
  %2 = ptrtoint ptr %max_ddbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_ddbs, align 4
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %1, i32 noundef %3) #4
  %4 = ptrtoint ptr %max_ddbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_ddbs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp.not = icmp ult i32 %call, %5
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %ddb_bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddb_bitmap, align 4
  tail call void @_set_bit(i32 noundef %call, ptr noundef %7) #4
  %conv = trunc i32 %call to i16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.017 = phi i32 [ 0, %if.end ], [ %add, %for.body.for.body_crit_edge ]
  %conv7 = trunc i32 %i.017 to i16
  %add.i = add nuw nsw i16 %conv7, 384
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext %add.i) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957448, i32 noundef 0) #4
  %add = add nuw nsw i32 %i.017, 4
  %cmp6 = icmp ult i32 %i.017, 60
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

out:                                              ; preds = %for.body.out_crit_edge, %entry.out_crit_edge
  %ddb.0 = phi i32 [ -12, %entry.out_crit_edge ], [ %call, %for.body.out_crit_edge ]
  ret i32 %ddb.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asd_set_ddb_type(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldd_ha, align 4
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldd_dev, align 128
  %8 = ptrtoint ptr %7 to i32
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp = icmp eq i32 %10, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %8 to i16
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 398) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  %call.i.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %5, i32 noundef -1207957448) #4
  %11 = and i16 %call.i.i, 255
  %or.i = or i16 %11, -1024
  br label %if.end5

if.else:                                          ; preds = %entry
  %tproto = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 13
  %12 = ptrtoint ptr %tproto to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tproto, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %conv4 = trunc i32 %8 to i16
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 398) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv4) #4
  %call.i.i15 = tail call zeroext i16 @asd_read_reg_word(ptr noundef %5, i32 noundef -1207957448) #4
  %14 = and i16 %call.i.i15, 255
  br i1 %tobool.not, label %if.else3, label %if.then1

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %or.i14 = or i16 %14, -512
  br label %if.end5

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %or.i16 = or i16 %14, -768
  br label %if.end5

if.end5:                                          ; preds = %if.else3, %if.then1, %if.then
  %conv4.sink = phi i16 [ %conv4, %if.then1 ], [ %conv4, %if.else3 ], [ %conv, %if.then ]
  %or.i14.sink = phi i16 [ %or.i14, %if.then1 ], [ %or.i16, %if.else3 ], [ %or.i, %if.then ]
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 398) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv4.sink) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext %or.i14.sink) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asd_init_sata(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldd_ha, align 4
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldd_dev, align 128
  %8 = ptrtoint ptr %7 to i32
  %conv = trunc i32 %8 to i16
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 422) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext -1) #4
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %10, label %entry.if.end_crit_edge [
    i32 5, label %entry.if.then_crit_edge
    i32 7, label %entry.if.then_crit_edge1
    i32 8, label %entry.if.then_crit_edge2
  ]

entry.if.then_crit_edge2:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge1:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge1, %entry.if.then_crit_edge2
  %status = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status, align 1
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 436) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  %call.i.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %5, i32 noundef -1207957448) #4
  %conv4.i = zext i8 %13 to i16
  %shl.i = shl nuw i16 %conv4.i, 8
  %14 = and i16 %call.i.i, 255
  %or.i = or i16 %14, %shl.i
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 436) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext %or.i) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957464, i16 noundef zeroext 440) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957458, i16 noundef zeroext %conv) #4
  tail call void @asd_write_reg_word(ptr noundef %5, i32 noundef -1207957448, i16 noundef zeroext -1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @asd_read_reg_word(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
