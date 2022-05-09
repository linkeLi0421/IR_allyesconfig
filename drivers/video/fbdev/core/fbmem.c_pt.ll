; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/fbmem.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbmem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+registered_fb\22, \22a\22\09"
module asm "\09.weak\09__crc_registered_fb\09\09\09\09"
module asm "\09.long\09__crc_registered_fb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_registered_fb:\09\09\09\09\09"
module asm "\09.asciz \09\22registered_fb\22\09\09\09\09\09"
module asm "__kstrtabns_registered_fb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+num_registered_fb\22, \22a\22\09"
module asm "\09.weak\09__crc_num_registered_fb\09\09\09\09"
module asm "\09.long\09__crc_num_registered_fb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_num_registered_fb:\09\09\09\09\09"
module asm "\09.asciz \09\22num_registered_fb\22\09\09\09\09\09"
module asm "__kstrtabns_num_registered_fb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_get_color_depth\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_get_color_depth\09\09\09\09"
module asm "\09.long\09__crc_fb_get_color_depth\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_get_color_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_get_color_depth\22\09\09\09\09\09"
module asm "__kstrtabns_fb_get_color_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_pad_aligned_buffer\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_pad_aligned_buffer\09\09\09\09"
module asm "\09.long\09__crc_fb_pad_aligned_buffer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_pad_aligned_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_pad_aligned_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_fb_pad_aligned_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_pad_unaligned_buffer\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_pad_unaligned_buffer\09\09\09\09"
module asm "\09.long\09__crc_fb_pad_unaligned_buffer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_pad_unaligned_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_pad_unaligned_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_fb_pad_unaligned_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_get_buffer_offset\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_get_buffer_offset\09\09\09\09"
module asm "\09.long\09__crc_fb_get_buffer_offset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_get_buffer_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_get_buffer_offset\22\09\09\09\09\09"
module asm "__kstrtabns_fb_get_buffer_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_prepare_logo\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_prepare_logo\09\09\09\09"
module asm "\09.long\09__crc_fb_prepare_logo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_prepare_logo:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_prepare_logo\22\09\09\09\09\09"
module asm "__kstrtabns_fb_prepare_logo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_show_logo\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_show_logo\09\09\09\09"
module asm "\09.long\09__crc_fb_show_logo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_show_logo:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_show_logo\22\09\09\09\09\09"
module asm "__kstrtabns_fb_show_logo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_pan_display\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_pan_display\09\09\09\09"
module asm "\09.long\09__crc_fb_pan_display\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_pan_display:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_pan_display\22\09\09\09\09\09"
module asm "__kstrtabns_fb_pan_display:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_set_var\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_set_var\09\09\09\09"
module asm "\09.long\09__crc_fb_set_var\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_set_var:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_set_var\22\09\09\09\09\09"
module asm "__kstrtabns_fb_set_var:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_blank\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_blank\09\09\09\09"
module asm "\09.long\09__crc_fb_blank\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_blank:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_blank\22\09\09\09\09\09"
module asm "__kstrtabns_fb_blank:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_class\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_class\09\09\09\09"
module asm "\09.long\09__crc_fb_class\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_class:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_class\22\09\09\09\09\09"
module asm "__kstrtabns_fb_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+remove_conflicting_framebuffers\22, \22a\22\09"
module asm "\09.weak\09__crc_remove_conflicting_framebuffers\09\09\09\09"
module asm "\09.long\09__crc_remove_conflicting_framebuffers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remove_conflicting_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22remove_conflicting_framebuffers\22\09\09\09\09\09"
module asm "__kstrtabns_remove_conflicting_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+is_firmware_framebuffer\22, \22a\22\09"
module asm "\09.weak\09__crc_is_firmware_framebuffer\09\09\09\09"
module asm "\09.long\09__crc_is_firmware_framebuffer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_firmware_framebuffer:\09\09\09\09\09"
module asm "\09.asciz \09\22is_firmware_framebuffer\22\09\09\09\09\09"
module asm "__kstrtabns_is_firmware_framebuffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+remove_conflicting_pci_framebuffers\22, \22a\22\09"
module asm "\09.weak\09__crc_remove_conflicting_pci_framebuffers\09\09\09\09"
module asm "\09.long\09__crc_remove_conflicting_pci_framebuffers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remove_conflicting_pci_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22remove_conflicting_pci_framebuffers\22\09\09\09\09\09"
module asm "__kstrtabns_remove_conflicting_pci_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_framebuffer\22, \22a\22\09"
module asm "\09.weak\09__crc_register_framebuffer\09\09\09\09"
module asm "\09.long\09__crc_register_framebuffer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_framebuffer:\09\09\09\09\09"
module asm "\09.asciz \09\22register_framebuffer\22\09\09\09\09\09"
module asm "__kstrtabns_register_framebuffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_framebuffer\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_framebuffer\09\09\09\09"
module asm "\09.long\09__crc_unregister_framebuffer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_framebuffer:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_framebuffer\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_framebuffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_set_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_set_suspend\09\09\09\09"
module asm "\09.long\09__crc_fb_set_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_set_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_set_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_fb_set_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.logo_data = type { i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.78 = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linux_logo = type { i32, i32, i32, i32, ptr, ptr }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_event = type { ptr, ptr }
%struct.fb_blit_caps = type { i32, i32, i32, i32 }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.85, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.85 = type { ptr }
%struct.fb_modelist = type { %struct.list_head, %struct.fb_videomode }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.82 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fb_cmap_user = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@registered_fb = dso_local global [32 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_registered_fb = external dso_local constant [0 x i8], align 1
@__kstrtabns_registered_fb = external dso_local constant [0 x i8], align 1
@__ksymtab_registered_fb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @registered_fb to i32), ptr @__kstrtab_registered_fb, ptr @__kstrtabns_registered_fb }, section "___ksymtab+registered_fb", align 4
@num_registered_fb = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_num_registered_fb = external dso_local constant [0 x i8], align 1
@__kstrtabns_num_registered_fb = external dso_local constant [0 x i8], align 1
@__ksymtab_num_registered_fb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @num_registered_fb to i32), ptr @__kstrtab_num_registered_fb, ptr @__kstrtabns_num_registered_fb }, section "___ksymtab+num_registered_fb", align 4
@fb_logo_count = dso_local local_unnamed_addr global i32 -1, section ".data..read_mostly", align 4
@__kstrtab_fb_get_color_depth = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_get_color_depth = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_get_color_depth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_get_color_depth to i32), ptr @__kstrtab_fb_get_color_depth, ptr @__kstrtabns_fb_get_color_depth }, section "___ksymtab+fb_get_color_depth", align 4
@__kstrtab_fb_pad_aligned_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_pad_aligned_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_pad_aligned_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_pad_aligned_buffer to i32), ptr @__kstrtab_fb_pad_aligned_buffer, ptr @__kstrtabns_fb_pad_aligned_buffer }, section "___ksymtab+fb_pad_aligned_buffer", align 4
@__kstrtab_fb_pad_unaligned_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_pad_unaligned_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_pad_unaligned_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_pad_unaligned_buffer to i32), ptr @__kstrtab_fb_pad_unaligned_buffer, ptr @__kstrtabns_fb_pad_unaligned_buffer }, section "___ksymtab+fb_pad_unaligned_buffer", align 4
@__kstrtab_fb_get_buffer_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_get_buffer_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_get_buffer_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_get_buffer_offset to i32), ptr @__kstrtab_fb_get_buffer_offset, ptr @__kstrtabns_fb_get_buffer_offset }, section "___ksymtab+fb_get_buffer_offset", align 4
@fb_logo = internal unnamed_addr global %struct.logo_data zeroinitializer, section ".data..read_mostly", align 4
@fb_center_logo = dso_local local_unnamed_addr global i8 0, section ".data..read_mostly", align 1
@__kstrtab_fb_prepare_logo = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_prepare_logo = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_prepare_logo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_prepare_logo to i32), ptr @__kstrtab_fb_prepare_logo, ptr @__kstrtabns_fb_prepare_logo }, section "___ksymtab+fb_prepare_logo", align 4
@__kstrtab_fb_show_logo = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_show_logo = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_show_logo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_show_logo to i32), ptr @__kstrtab_fb_show_logo, ptr @__kstrtabns_fb_show_logo }, section "___ksymtab+fb_show_logo", align 4
@__kstrtab_fb_pan_display = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_pan_display = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_pan_display = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_pan_display to i32), ptr @__kstrtab_fb_pan_display, ptr @__kstrtabns_fb_pan_display }, section "___ksymtab+fb_pan_display", align 4
@fb_set_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014detected fb_set_par error, error code: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_set_var\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/video/fbdev/core/fbmem.c\00", [63 x i8] zeroinitializer }, align 32
@fb_set_var._entry_ptr = internal global ptr @fb_set_var._entry, section ".printk_index", align 4
@__kstrtab_fb_set_var = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_set_var = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_set_var = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_set_var to i32), ptr @__kstrtab_fb_set_var, ptr @__kstrtabns_fb_set_var }, section "___ksymtab+fb_set_var", align 4
@__kstrtab_fb_blank = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_blank = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_blank = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_blank to i32), ptr @__kstrtab_fb_blank, ptr @__kstrtabns_fb_blank }, section "___ksymtab+fb_blank", align 4
@fb_class = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fb_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_class = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_class to i32), ptr @__kstrtab_fb_class, ptr @__kstrtabns_fb_class }, section "___ksymtab+fb_class", align 4
@__param_str_lockless_register_fb = internal constant [24 x i8] c"fb.lockless_register_fb\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@lockless_register_fb = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_lockless_register_fb = internal constant %struct.kernel_param { ptr @__param_str_lockless_register_fb, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 1, %union.anon.76 { ptr @lockless_register_fb } }, section "__param", align 4
@__UNIQUE_ID_lockless_register_fbtype305 = internal constant [38 x i8] c"fb.parmtype=lockless_register_fb:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_lockless_register_fb306 = internal constant [91 x i8] c"fb.parm=lockless_register_fb:Lockless framebuffer registration for debugging [default=off]\00", section ".modinfo", align 1
@registration_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @registration_lock, i64 52), ptr getelementptr (i8, ptr @registration_lock, i64 52) }, ptr @registration_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_remove_conflicting_framebuffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_remove_conflicting_framebuffers = external dso_local constant [0 x i8], align 1
@__ksymtab_remove_conflicting_framebuffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remove_conflicting_framebuffers to i32), ptr @__kstrtab_remove_conflicting_framebuffers, ptr @__kstrtabns_remove_conflicting_framebuffers }, section "___ksymtab+remove_conflicting_framebuffers", align 4
@__kstrtab_is_firmware_framebuffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_firmware_framebuffer = external dso_local constant [0 x i8], align 1
@__ksymtab_is_firmware_framebuffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_firmware_framebuffer to i32), ptr @__kstrtab_is_firmware_framebuffer, ptr @__kstrtabns_is_firmware_framebuffer }, section "___ksymtab+is_firmware_framebuffer", align 4
@remove_conflicting_pci_framebuffers.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fb\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"remove_conflicting_pci_framebuffers\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: bar %d: 0x%lx -> 0x%lx\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_remove_conflicting_pci_framebuffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_remove_conflicting_pci_framebuffers = external dso_local constant [0 x i8], align 1
@__ksymtab_remove_conflicting_pci_framebuffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remove_conflicting_pci_framebuffers to i32), ptr @__kstrtab_remove_conflicting_pci_framebuffers, ptr @__kstrtabns_remove_conflicting_pci_framebuffers }, section "___ksymtab+remove_conflicting_pci_framebuffers", align 4
@__kstrtab_register_framebuffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_framebuffer = external dso_local constant [0 x i8], align 1
@__ksymtab_register_framebuffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_framebuffer to i32), ptr @__kstrtab_register_framebuffer, ptr @__kstrtabns_register_framebuffer }, section "___ksymtab+register_framebuffer", align 4
@__kstrtab_unregister_framebuffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_framebuffer = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_framebuffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_framebuffer to i32), ptr @__kstrtab_unregister_framebuffer, ptr @__kstrtabns_unregister_framebuffer }, section "___ksymtab+unregister_framebuffer", align 4
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_fb_set_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_set_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_set_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_set_suspend to i32), ptr @__kstrtab_fb_set_suspend, ptr @__kstrtabns_fb_set_suspend }, section "___ksymtab+fb_set_suspend", align 4
@__initcall__kmod_fb__308_1990_fbmem_init4 = internal global ptr @fbmem_init, section ".initcall4.init", align 4
@__UNIQUE_ID_file309 = internal constant [36 x i8] c"fb.file=drivers/video/fbdev/core/fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [15 x i8] c"fb.license=GPL\00", section ".modinfo", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fb_set_logo_truepalette.mask = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\80\C0\E0\F0\F8\FC\FE\FF", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"registration_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"registration_lock\00", [46 x i8] zeroinitializer }, align 32
@do_remove_conflicting_framebuffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016fb%d: switching to %s from %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"do_remove_conflicting_framebuffers\00", [61 x i8] zeroinitializer }, align 32
@do_remove_conflicting_framebuffers._entry_ptr = internal global ptr @do_remove_conflicting_framebuffers._entry, section ".printk_index", align 4
@fb_do_apertures_overlap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017checking generic (%llx %llx) vs hw (%llx %llx)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fb_do_apertures_overlap\00", [40 x i8] zeroinitializer }, align 32
@fb_do_apertures_overlap._entry_ptr = internal global ptr @fb_do_apertures_overlap._entry, section ".printk_index", align 4
@do_register_framebuffer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&fb_info->lock\00", [17 x i8] zeroinitializer }, align 32
@do_register_framebuffer.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&fb_info->mm_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fb%d\00", [27 x i8] zeroinitializer }, align 32
@do_register_framebuffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014Unable to create device for framebuffer %d; errno = %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"do_register_framebuffer\00", [40 x i8] zeroinitializer }, align 32
@do_register_framebuffer._entry_ptr = internal global ptr @do_register_framebuffer._entry, section ".printk_index", align 4
@fb_check_foreignness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s: enable CONFIG_FB_BIG_ENDIAN to support this framebuffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fb_check_foreignness\00", [43 x i8] zeroinitializer }, align 32
@fb_check_foreignness._entry_ptr = internal global ptr @fb_check_foreignness._entry, section ".printk_index", align 4
@fb_check_foreignness._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 1509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013%s: enable CONFIG_FB_LITTLE_ENDIAN to support this framebuffer\0A\00", [62 x i8] zeroinitializer }, align 32
@fb_check_foreignness._entry_ptr.22 = internal global ptr @fb_check_foreignness._entry.20, section ".printk_index", align 4
@proc_fb_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @fb_seq_start, ptr @fb_seq_stop, ptr @fb_seq_next, ptr @fb_seq_show }, [16 x i8] zeroinitializer }, align 32
@fb_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @fb_read, ptr @fb_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fb_ioctl, ptr null, ptr @fb_mmap, i32 0, ptr @fb_open, ptr null, ptr @fb_release, ptr @fb_deferred_io_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fbmem_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to get major %d for fb devs\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fbmem_init\00", [21 x i8] zeroinitializer }, align 32
@fbmem_init._entry_ptr = internal global ptr @fbmem_init._entry, section ".printk_index", align 4
@fbmem_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"graphics\00", [23 x i8] zeroinitializer }, align 32
@fbmem_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.2, i32 1958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014Unable to create fb class; errno = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@fbmem_init._entry_ptr.28 = internal global ptr @fbmem_init._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [12 x i64] [i64 10, i64 32, i64 17920, i64 17921, i64 17922, i64 17924, i64 17925, i64 17926, i64 17935, i64 17936, i64 17937, i64 3225961992]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1040, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [9 x i8] c"fb_class\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1488, i32 15 }
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"lockless_register_fb\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1578, i32 13 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"registration_lock\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1846, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 232, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 48, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1571, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1538, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1604, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1605, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1608, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1611, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1504, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1508, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"proc_fb_seq_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 736, i32 51 }
@___asan_gen_.138 = private unnamed_addr constant [8 x i8] c"fb_fops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1466, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1951, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1955, i32 13 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1958, i32 3 }
@___asan_gen_.163 = private constant [36 x i8] c"../drivers/video/fbdev/core/fbmem.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 732, i32 17 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 230, i32 6 }
@___asan_gen_.169 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 214, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 174, i32 2 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__UNIQUE_ID_lockless_register_fb306, ptr @__UNIQUE_ID_lockless_register_fbtype305, ptr @__initcall__kmod_fb__308_1990_fbmem_init4, ptr @__ksymtab_fb_blank, ptr @__ksymtab_fb_class, ptr @__ksymtab_fb_get_buffer_offset, ptr @__ksymtab_fb_get_color_depth, ptr @__ksymtab_fb_pad_aligned_buffer, ptr @__ksymtab_fb_pad_unaligned_buffer, ptr @__ksymtab_fb_pan_display, ptr @__ksymtab_fb_prepare_logo, ptr @__ksymtab_fb_set_suspend, ptr @__ksymtab_fb_set_var, ptr @__ksymtab_fb_show_logo, ptr @__ksymtab_is_firmware_framebuffer, ptr @__ksymtab_num_registered_fb, ptr @__ksymtab_register_framebuffer, ptr @__ksymtab_registered_fb, ptr @__ksymtab_remove_conflicting_framebuffers, ptr @__ksymtab_remove_conflicting_pci_framebuffers, ptr @__ksymtab_unregister_framebuffer, ptr @__param_lockless_register_fb, ptr @do_register_framebuffer._entry, ptr @do_register_framebuffer._entry_ptr, ptr @do_remove_conflicting_framebuffers._entry, ptr @do_remove_conflicting_framebuffers._entry_ptr, ptr @fb_check_foreignness._entry, ptr @fb_check_foreignness._entry.20, ptr @fb_check_foreignness._entry_ptr, ptr @fb_check_foreignness._entry_ptr.22, ptr @fb_do_apertures_overlap._entry, ptr @fb_do_apertures_overlap._entry_ptr, ptr @fb_set_var._entry, ptr @fb_set_var._entry_ptr, ptr @fbmem_init._entry, ptr @fbmem_init._entry.26, ptr @fbmem_init._entry_ptr, ptr @fbmem_init._entry_ptr.28, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @fb_class, ptr @lockless_register_fb, ptr @registration_lock, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fb_set_logo_truepalette.mask, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @do_register_framebuffer.__key, ptr @.str.12, ptr @do_register_framebuffer.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @proc_fb_seq_ops, ptr @fb_fops, ptr @.str.23, ptr @.str.24, ptr @fbmem_init.__key, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_set_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockless_register_fb to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @registration_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_set_logo_truepalette.mask to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_remove_conflicting_framebuffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_do_apertures_overlap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_register_framebuffer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_register_framebuffer.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_register_framebuffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_check_foreignness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_check_foreignness._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_fb_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbmem_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbmem_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbmem_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fb_get_color_depth(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %fix) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %visual = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %fix, i32 0, i32 5
  %0 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %entry.if.end31_crit_edge, label %if.else

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.else:                                          ; preds = %entry
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %length3 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %length3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp4 = icmp eq i32 %3, %5
  br i1 %cmp4, label %land.lhs.true, label %if.else.if.else23_crit_edge

if.else.if.else23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else23

land.lhs.true:                                    ; preds = %if.else
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length7 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %length7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp8 = icmp eq i32 %3, %7
  br i1 %cmp8, label %land.lhs.true9, label %land.lhs.true.if.else23_crit_edge

land.lhs.true.if.else23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else23

land.lhs.true9:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %green, align 4
  %10 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp13 = icmp eq i32 %9, %11
  br i1 %cmp13, label %land.lhs.true14, label %land.lhs.true9.if.else23_crit_edge

land.lhs.true9.if.else23_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else23

land.lhs.true14:                                  ; preds = %land.lhs.true9
  %12 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %red, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp19 = icmp eq i32 %9, %13
  br i1 %cmp19, label %land.lhs.true14.if.end31_crit_edge, label %land.lhs.true14.if.else23_crit_edge

land.lhs.true14.if.else23_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else23

land.lhs.true14.if.end31_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.else23:                                        ; preds = %land.lhs.true14.if.else23_crit_edge, %land.lhs.true9.if.else23_crit_edge, %land.lhs.true.if.else23_crit_edge, %if.else.if.else23_crit_edge
  %length27 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %length27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length27, align 4
  %add = add i32 %5, %3
  %add30 = add i32 %add, %15
  br label %if.end31

if.end31:                                         ; preds = %if.else23, %land.lhs.true14.if.end31_crit_edge, %entry.if.end31_crit_edge
  %depth.0 = phi i32 [ %add30, %if.else23 ], [ 1, %entry.if.end31_crit_edge ], [ %3, %land.lhs.true14.if.end31_crit_edge ]
  ret i32 %depth.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fb_pad_aligned_buffer(ptr nocapture noundef writeonly %dst, i32 noundef %d_pitch, ptr nocapture noundef readonly %src, i32 noundef %s_pitch, i32 noundef %height) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.i = sub i32 %d_pitch, %s_pitch
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %height)
  %tobool.not15.i = icmp eq i32 %height, 0
  br i1 %tobool.not15.i, label %entry.__fb_pad_aligned_buffer.exit_crit_edge, label %for.cond1.preheader.lr.ph.i

entry.__fb_pad_aligned_buffer.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__fb_pad_aligned_buffer.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s_pitch)
  %cmp9.not.i = icmp eq i32 %s_pitch, 0
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %dec18.in.i = phi i32 [ %height, %for.cond1.preheader.lr.ph.i ], [ %dec18.i, %for.end.i.for.cond1.preheader.i_crit_edge ]
  %dst.addr.017.i = phi ptr [ %dst, %for.cond1.preheader.lr.ph.i ], [ %add.ptr.i, %for.end.i.for.cond1.preheader.i_crit_edge ]
  %src.addr.016.i = phi ptr [ %src, %for.cond1.preheader.lr.ph.i ], [ %src.addr.1.lcssa.i, %for.end.i.for.cond1.preheader.i_crit_edge ]
  %dec18.i = add i32 %dec18.in.i, -1
  br i1 %cmp9.not.i, label %for.cond1.preheader.i.for.end.i_crit_edge, label %for.cond1.preheader.i.for.body2.i_crit_edge

for.cond1.preheader.i.for.body2.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body2.i

for.cond1.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body2.i:                                      ; preds = %for.body2.i.for.body2.i_crit_edge, %for.cond1.preheader.i.for.body2.i_crit_edge
  %j.012.i = phi i32 [ %inc.i, %for.body2.i.for.body2.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %dst.addr.111.i = phi ptr [ %incdec.ptr3.i, %for.body2.i.for.body2.i_crit_edge ], [ %dst.addr.017.i, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %src.addr.110.i = phi ptr [ %incdec.ptr.i, %for.body2.i.for.body2.i_crit_edge ], [ %src.addr.016.i, %for.cond1.preheader.i.for.body2.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %src.addr.110.i, i32 1
  %0 = ptrtoint ptr %src.addr.110.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src.addr.110.i, align 1
  %incdec.ptr3.i = getelementptr i8, ptr %dst.addr.111.i, i32 1
  %2 = ptrtoint ptr %dst.addr.111.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %dst.addr.111.i, align 1
  %inc.i = add nuw i32 %j.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %s_pitch
  br i1 %exitcond.not.i, label %for.body2.i.for.end.i_crit_edge, label %for.body2.i.for.body2.i_crit_edge

for.body2.i.for.body2.i_crit_edge:                ; preds = %for.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body2.i

for.body2.i.for.end.i_crit_edge:                  ; preds = %for.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.body2.i.for.end.i_crit_edge, %for.cond1.preheader.i.for.end.i_crit_edge
  %src.addr.1.lcssa.i = phi ptr [ %src.addr.016.i, %for.cond1.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body2.i.for.end.i_crit_edge ]
  %dst.addr.1.lcssa.i = phi ptr [ %dst.addr.017.i, %for.cond1.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr3.i, %for.body2.i.for.end.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %dst.addr.1.lcssa.i, i32 %sub.i
  %tobool.not.i = icmp eq i32 %dec18.i, 0
  br i1 %tobool.not.i, label %for.end.i.__fb_pad_aligned_buffer.exit_crit_edge, label %for.end.i.for.cond1.preheader.i_crit_edge

for.end.i.for.cond1.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond1.preheader.i

for.end.i.__fb_pad_aligned_buffer.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__fb_pad_aligned_buffer.exit

__fb_pad_aligned_buffer.exit:                     ; preds = %for.end.i.__fb_pad_aligned_buffer.exit_crit_edge, %entry.__fb_pad_aligned_buffer.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fb_pad_unaligned_buffer(ptr nocapture noundef %dst, i32 noundef %d_pitch, ptr nocapture noundef readonly %src, i32 noundef %idx, i32 noundef %height, i32 noundef %shift_high, i32 noundef %shift_low, i32 noundef %mod) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %height)
  %tobool.not69 = icmp eq i32 %height, 0
  br i1 %tobool.not69, label %entry.for.end34_crit_edge, label %for.cond1.preheader.lr.ph

entry.for.end34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %shl = shl i32 4095, %shift_high
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp65.not = icmp eq i32 %idx, 0
  %0 = trunc i32 %shl to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %shift_high, i32 %mod)
  %cmp26 = icmp ult i32 %shift_high, %mod
  %add31 = add i32 %idx, 1
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %if.end.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %dec72.in = phi i32 [ %height, %for.cond1.preheader.lr.ph ], [ %dec72, %if.end.for.cond1.preheader_crit_edge ]
  %dst.addr.071 = phi ptr [ %dst, %for.cond1.preheader.lr.ph ], [ %add.ptr, %if.end.for.cond1.preheader_crit_edge ]
  %src.addr.070 = phi ptr [ %src, %for.cond1.preheader.lr.ph ], [ %incdec.ptr33, %if.end.for.cond1.preheader_crit_edge ]
  %dec72 = add i32 %dec72.in, -1
  br i1 %cmp65.not, label %for.cond1.preheader.for.end_crit_edge, label %for.body3.preheader

for.cond1.preheader.for.end_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body3.preheader:                              ; preds = %for.cond1.preheader
  %1 = ptrtoint ptr %dst.addr.071 to i32
  call void @__asan_load1_noabort(i32 %1)
  %load_initial = load i8, ptr %dst.addr.071, align 1
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.preheader
  %store_forwarded = phi i8 [ %load_initial, %for.body3.preheader ], [ %conv13, %for.body3.for.body3_crit_edge ]
  %j.067 = phi i32 [ 0, %for.body3.preheader ], [ %add, %for.body3.for.body3_crit_edge ]
  %src.addr.166 = phi ptr [ %src.addr.070, %for.body3.preheader ], [ %incdec.ptr, %for.body3.for.body3_crit_edge ]
  %arrayidx = getelementptr i8, ptr %dst.addr.071, i32 %j.067
  %conv6 = and i8 %store_forwarded, %0
  %2 = ptrtoint ptr %src.addr.166 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %src.addr.166, align 1
  %conv7 = zext i8 %3 to i32
  %shr = lshr i32 %conv7, %shift_low
  %4 = trunc i32 %shr to i8
  %conv9 = or i8 %conv6, %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv9, ptr %arrayidx, align 1
  %6 = load i8, ptr %src.addr.166, align 1
  %conv11 = zext i8 %6 to i32
  %shl12 = shl i32 %conv11, %shift_high
  %conv13 = trunc i32 %shl12 to i8
  %add = add nuw i32 %j.067, 1
  %arrayidx14 = getelementptr i8, ptr %dst.addr.071, i32 %add
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv13, ptr %arrayidx14, align 1
  %incdec.ptr = getelementptr i8, ptr %src.addr.166, i32 1
  %exitcond.not = icmp eq i32 %add, %idx
  br i1 %exitcond.not, label %for.body3.for.end_crit_edge, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body3

for.body3.for.end_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body3.for.end_crit_edge, %for.cond1.preheader.for.end_crit_edge
  %src.addr.1.lcssa = phi ptr [ %src.addr.070, %for.cond1.preheader.for.end_crit_edge ], [ %incdec.ptr, %for.body3.for.end_crit_edge ]
  %arrayidx15 = getelementptr i8, ptr %dst.addr.071, i32 %idx
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx15, align 1
  %conv19 = and i8 %9, %0
  %10 = ptrtoint ptr %src.addr.1.lcssa to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %src.addr.1.lcssa, align 1
  %conv20 = zext i8 %11 to i32
  %shr21 = lshr i32 %conv20, %shift_low
  %12 = trunc i32 %shr21 to i8
  %conv24 = or i8 %conv19, %12
  store i8 %conv24, ptr %arrayidx15, align 1
  br i1 %cmp26, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %src.addr.1.lcssa to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %src.addr.1.lcssa, align 1
  %conv28 = zext i8 %14 to i32
  %shl29 = shl i32 %conv28, %shift_high
  %conv30 = trunc i32 %shl29 to i8
  %arrayidx32 = getelementptr i8, ptr %dst.addr.071, i32 %add31
  %15 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv30, ptr %arrayidx32, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %incdec.ptr33 = getelementptr i8, ptr %src.addr.1.lcssa, i32 1
  %add.ptr = getelementptr i8, ptr %dst.addr.071, i32 %d_pitch
  %tobool.not = icmp eq i32 %dec72, 0
  br i1 %tobool.not, label %if.end.for.end34_crit_edge, label %if.end.for.cond1.preheader_crit_edge

if.end.for.cond1.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond1.preheader

if.end.for.end34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

for.end34:                                        ; preds = %if.end.for.end34_crit_edge, %entry.for.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fb_get_buffer_offset(ptr noundef %info, ptr nocapture noundef %buf, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %flags = getelementptr inbounds %struct.fb_pixmap, ptr %buf, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %4 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb_sync, align 4
  %tobool2.not = icmp eq ptr %7, null
  %and4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 %7(ptr noundef %info) #14
  br label %cleanup

if.end9:                                          ; preds = %entry
  %buf_align = getelementptr inbounds %struct.fb_pixmap, ptr %buf, i32 0, i32 3
  %8 = ptrtoint ptr %buf_align to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_align, align 4
  %sub = add i32 %9, -1
  %offset10 = getelementptr inbounds %struct.fb_pixmap, ptr %buf, i32 0, i32 2
  %10 = ptrtoint ptr %offset10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset10, align 4
  %add = add i32 %sub, %11
  %neg = sub i32 0, %9
  %and11 = and i32 %add, %neg
  %add12 = add i32 %and11, %size
  %size13 = getelementptr inbounds %struct.fb_pixmap, ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %size13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add12, i32 %13)
  %cmp = icmp ugt i32 %add12, %13
  br i1 %cmp, label %if.then14, label %if.end9.if.end27_crit_edge

if.end9.if.end27_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then14:                                        ; preds = %if.end9
  %fbops15 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %14 = ptrtoint ptr %fbops15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fbops15, align 4
  %fb_sync16 = getelementptr inbounds %struct.fb_ops, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %fb_sync16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb_sync16, align 4
  %tobool17.not = icmp eq ptr %17, null
  %and20 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %or.cond52 = select i1 %tobool17.not, i1 true, i1 %tobool21.not
  br i1 %or.cond52, label %if.then14.if.end27_crit_edge, label %if.then22

if.then14.if.end27_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then22:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %call25 = tail call i32 %17(ptr noundef %info) #14
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.then14.if.end27_crit_edge, %if.end9.if.end27_crit_edge
  %offset.0 = phi i32 [ %and11, %if.end9.if.end27_crit_edge ], [ 0, %if.then22 ], [ 0, %if.then14.if.end27_crit_edge ]
  %add28 = add i32 %offset.0, %size
  %18 = ptrtoint ptr %offset10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add28, ptr %offset10, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset.0
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then6, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end27 ], [ %1, %if.then6 ], [ %1, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_prepare_logo(ptr nocapture noundef readonly %info, i32 noundef %rotate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %visual.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %visual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch.i = icmp ult i32 %1, 2
  br i1 %switch.i, label %entry.fb_get_color_depth.exit_crit_edge, label %if.else.i

entry.fb_get_color_depth.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_get_color_depth.exit

if.else.i:                                        ; preds = %entry
  %green.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  %blue.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length3.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %4 = ptrtoint ptr %length3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp4.i = icmp eq i32 %3, %5
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.else.i.if.else23.i_crit_edge

if.else.i.if.else23.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else23.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %red.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length7.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %6 = ptrtoint ptr %length7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp8.i = icmp eq i32 %3, %7
  br i1 %cmp8.i, label %land.lhs.true9.i, label %land.lhs.true.i.if.else23.i_crit_edge

land.lhs.true.i.if.else23.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else23.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %green.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %green.i, align 4
  %10 = ptrtoint ptr %blue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blue.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp13.i = icmp eq i32 %9, %11
  br i1 %cmp13.i, label %land.lhs.true14.i, label %land.lhs.true9.i.if.else23.i_crit_edge

land.lhs.true9.i.if.else23.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else23.i

land.lhs.true14.i:                                ; preds = %land.lhs.true9.i
  %12 = ptrtoint ptr %red.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %red.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp19.i = icmp eq i32 %9, %13
  br i1 %cmp19.i, label %land.lhs.true14.i.fb_get_color_depth.exit_crit_edge, label %land.lhs.true14.i.if.else23.i_crit_edge

land.lhs.true14.i.if.else23.i_crit_edge:          ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else23.i

land.lhs.true14.i.fb_get_color_depth.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_get_color_depth.exit

if.else23.i:                                      ; preds = %land.lhs.true14.i.if.else23.i_crit_edge, %land.lhs.true9.i.if.else23.i_crit_edge, %land.lhs.true.i.if.else23.i_crit_edge, %if.else.i.if.else23.i_crit_edge
  %length27.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %14 = ptrtoint ptr %length27.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length27.i, align 4
  %add.i = add i32 %5, %3
  %add30.i = add i32 %add.i, %15
  br label %fb_get_color_depth.exit

fb_get_color_depth.exit:                          ; preds = %if.else23.i, %land.lhs.true14.i.fb_get_color_depth.exit_crit_edge, %entry.fb_get_color_depth.exit_crit_edge
  %depth.0.i = phi i32 [ %add30.i, %if.else23.i ], [ 1, %entry.fb_get_color_depth.exit_crit_edge ], [ %3, %land.lhs.true14.i.fb_get_color_depth.exit_crit_edge ]
  %16 = call ptr @memset(ptr @fb_logo, i32 0, i32 20)
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %fb_get_color_depth.exit.cleanup_crit_edge

fb_get_color_depth.exit.cleanup_crit_edge:        ; preds = %fb_get_color_depth.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %fb_get_color_depth.exit
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %19 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fbops, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool1.not = icmp eq ptr %22, null
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %23 = load i32, ptr @fb_logo_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not = icmp eq i32 %23, 0
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %24 = ptrtoint ptr %visual.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %visual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp = icmp eq i32 %25, 4
  br i1 %cmp, label %if.then5, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 4
  %length8 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %28 = ptrtoint ptr %length8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length8, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %27)
  %length16 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %31 = ptrtoint ptr %length16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length16, align 4
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 %30)
  br label %if.end23

if.end23:                                         ; preds = %if.then5, %if.end.if.end23_crit_edge
  %depth.1 = phi i32 [ %depth.0.i, %if.end.if.end23_crit_edge ], [ %33, %if.then5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp26 = icmp eq i32 %25, 5
  %34 = tail call i32 @llvm.smin.i32(i32 %depth.1, i32 4)
  %spec.select98 = select i1 %cmp26, i32 %34, i32 %depth.1
  %call30 = tail call ptr @fb_find_logo(i32 noundef %spec.select98) #14
  store ptr %call30, ptr getelementptr inbounds (%struct.logo_data, ptr @fb_logo, i32 0, i32 4), align 4
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end23.cleanup_crit_edge, label %if.end33

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %35 = zext i32 %rotate to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rotate, label %if.end33.if.end41_crit_edge [
    i32 0, label %if.end33.if.then37_crit_edge
    i32 2, label %if.end33.if.then37_crit_edge103
  ]

if.end33.if.then37_crit_edge103:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then37

if.end33.if.then37_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then37

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then37:                                        ; preds = %if.end33.if.then37_crit_edge, %if.end33.if.then37_crit_edge103
  %yres39 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end33.if.end41_crit_edge
  %yres.0.in = phi ptr [ %yres39, %if.then37 ], [ %var, %if.end33.if.end41_crit_edge ]
  %36 = ptrtoint ptr %yres.0.in to i32
  call void @__asan_load4_noabort(i32 %36)
  %yres.0 = load i32, ptr %yres.0.in, align 4
  %height42 = getelementptr inbounds %struct.linux_logo, ptr %call30, i32 0, i32 2
  %37 = ptrtoint ptr %height42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %yres.0)
  %cmp43 = icmp ugt i32 %38, %yres.0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  store ptr null, ptr getelementptr inbounds (%struct.logo_data, ptr @fb_logo, i32 0, i32 4), align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %39 = ptrtoint ptr %call30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %switch.selectcmp = icmp eq i32 %40, 2
  %switch.select = select i1 %switch.selectcmp, i32 4, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %switch.selectcmp101 = icmp eq i32 %40, 3
  %switch.select102 = select i1 %switch.selectcmp101, i32 8, i32 %switch.select
  store i32 %switch.select102, ptr @fb_logo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select98)
  %cmp57 = icmp sgt i32 %spec.select98, 4
  %or.cond = and i1 %cmp57, %switch.selectcmp101
  br i1 %or.cond, label %if.then58, label %if.end45.if.end63_crit_edge

if.end45.if.end63_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then58:                                        ; preds = %if.end45
  %41 = ptrtoint ptr %visual.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %visual.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %42, label %if.then58.if.end63_crit_edge [
    i32 2, label %if.then58.if.end63.sink.split_crit_edge
    i32 4, label %sw.bb61
    i32 3, label %sw.bb62
  ]

if.then58.if.end63.sink.split_crit_edge:          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63.sink.split

if.then58.if.end63_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

sw.bb61:                                          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  store i32 1, ptr getelementptr inbounds (%struct.logo_data, ptr @fb_logo, i32 0, i32 1), align 4
  br label %if.end63.sink.split

sw.bb62:                                          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63.sink.split

if.end63.sink.split:                              ; preds = %sw.bb62, %sw.bb61, %if.then58.if.end63.sink.split_crit_edge
  %.sink100 = phi ptr [ getelementptr inbounds (%struct.logo_data, ptr @fb_logo, i32 0, i32 3), %sw.bb61 ], [ getelementptr inbounds (%struct.logo_data, ptr @fb_logo, i32 0, i32 3), %sw.bb62 ], [ getelementptr inbounds (%struct.logo_data, ptr @fb_logo, i32 0, i32 2), %if.then58.if.end63.sink.split_crit_edge ]
  %44 = ptrtoint ptr %.sink100 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %.sink100, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %if.then58.if.end63_crit_edge, %if.end45.if.end63_crit_edge
  %45 = ptrtoint ptr %height42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height42, align 4
  %47 = load i8, ptr @fb_center_logo, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool65.not = icmp eq i8 %47, 0
  %sub = sub i32 %yres.0, %46
  %div97 = lshr i32 %sub, 1
  %add = select i1 %tobool65.not, i32 0, i32 %div97
  %height.0 = add i32 %add, %46
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then44, %if.end23.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %fb_get_color_depth.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then44 ], [ %height.0, %if.end63 ], [ 0, %lor.lhs.false2.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %fb_get_color_depth.exit.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_logo(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_show_logo(ptr noundef %info, i32 noundef %rotate) #3 align 64 {
entry:
  %palette_cmap.i.i = alloca %struct.fb_cmap, align 4
  %palette_green.i.i = alloca [16 x i16], align 2
  %palette_blue.i.i = alloca [16 x i16], align 2
  %palette_red.i.i = alloca [16 x i16], align 2
  %image.i = alloca %struct.fb_image, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @fb_logo_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %1 = load volatile i32, ptr @__num_online_cpus, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ %0, %if.end.cond.end_crit_edge ]
  %2 = load ptr, ptr getelementptr inbounds (%struct.logo_data, ptr @fb_logo, i32 0, i32 4), align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %image.i) #14
  %3 = call ptr @memset(ptr %image.i, i32 255, i32 56)
  %cmp.i = icmp eq ptr %2, null
  br i1 %cmp.i, label %cond.end.fb_show_logo_line.exit_crit_edge, label %lor.lhs.false.i

cond.end.fb_show_logo_line.exit_crit_edge:        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_show_logo_line.exit

lor.lhs.false.i:                                  ; preds = %cond.end
  %state.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not.i = icmp eq i32 %5, 0
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.fb_show_logo_line.exit_crit_edge

lor.lhs.false.i.fb_show_logo_line.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_show_logo_line.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %6 = ptrtoint ptr %fbops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false2.i.fb_show_logo_line.exit_crit_edge

lor.lhs.false2.i.fb_show_logo_line.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_show_logo_line.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %depth.i = getelementptr inbounds %struct.fb_image, ptr %image.i, i32 0, i32 6
  %10 = ptrtoint ptr %depth.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %depth.i, align 4
  %data.i = getelementptr inbounds %struct.linux_logo, ptr %2, i32 0, i32 5
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %data3.i = getelementptr inbounds %struct.fb_image, ptr %image.i, i32 0, i32 7
  %13 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %data3.i, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.logo_data, ptr @fb_logo, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not.i = icmp eq i32 %14, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then5.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %palette_cmap.i.i) #14
  %15 = getelementptr inbounds %struct.fb_cmap, ptr %palette_cmap.i.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.fb_cmap, ptr %palette_cmap.i.i, i32 0, i32 2
  %17 = getelementptr inbounds %struct.fb_cmap, ptr %palette_cmap.i.i, i32 0, i32 3
  %18 = getelementptr inbounds %struct.fb_cmap, ptr %palette_cmap.i.i, i32 0, i32 4
  %19 = getelementptr inbounds %struct.fb_cmap, ptr %palette_cmap.i.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %palette_green.i.i) #14
  %20 = call ptr @memset(ptr %palette_green.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %palette_blue.i.i) #14
  %21 = call ptr @memset(ptr %palette_blue.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %palette_red.i.i) #14
  %clut1.i.i = getelementptr inbounds %struct.linux_logo, ptr %2, i32 0, i32 4
  %22 = call ptr @memset(ptr %palette_red.i.i, i32 255, i32 32)
  %23 = ptrtoint ptr %clut1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clut1.i.i, align 4
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %palette_red.i.i, ptr %16, align 4
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %palette_green.i.i, ptr %17, align 4
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %palette_blue.i.i, ptr %18, align 4
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %19, align 4
  %clutsize.i.i = getelementptr inbounds %struct.linux_logo, ptr %2, i32 0, i32 3
  %29 = ptrtoint ptr %clutsize.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clutsize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp58.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp58.not.i.i, label %if.then5.i.fb_set_logocmap.exit.i_crit_edge, label %if.then5.i.for.body.i.i_crit_edge

if.then5.i.for.body.i.i_crit_edge:                ; preds = %if.then5.i
  br label %for.body.i.i

if.then5.i.fb_set_logocmap.exit.i_crit_edge:      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_set_logocmap.exit.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %if.then5.i.for.body.i.i_crit_edge
  %31 = phi i32 [ %51, %for.end.i.i.for.body.i.i_crit_edge ], [ %30, %if.then5.i.for.body.i.i_crit_edge ]
  %clut.060.i.i = phi ptr [ %clut.1.lcssa.i.i, %for.end.i.i.for.body.i.i_crit_edge ], [ %24, %if.then5.i.for.body.i.i_crit_edge ]
  %i.059.i.i = phi i32 [ %add35.i.i, %for.end.i.i.for.body.i.i_crit_edge ], [ 0, %if.then5.i.for.body.i.i_crit_edge ]
  %sub.i.i = sub i32 %31, %i.059.i.i
  %32 = call i32 @llvm.smin.i32(i32 %sub.i.i, i32 16) #14
  %add.i.i = add i32 %i.059.i.i, 32
  %33 = ptrtoint ptr %palette_cmap.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i.i, ptr %palette_cmap.i.i, align 4
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp955.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp955.i.i, label %for.body10.preheader.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body10.preheader.i.i:                         ; preds = %for.body.i.i
  %smax.i.i = call i32 @llvm.smax.i32(i32 %32, i32 1) #14
  br label %for.body10.i.i

for.body10.i.i:                                   ; preds = %for.body10.i.i.for.body10.i.i_crit_edge, %for.body10.preheader.i.i
  %clut.157.i.i = phi ptr [ %add.ptr.i.i, %for.body10.i.i.for.body10.i.i_crit_edge ], [ %clut.060.i.i, %for.body10.preheader.i.i ]
  %j.056.i.i = phi i32 [ %inc.i.i, %for.body10.i.i.for.body10.i.i_crit_edge ], [ 0, %for.body10.preheader.i.i ]
  %35 = ptrtoint ptr %clut.157.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %clut.157.i.i, align 1
  %conv.i.i = zext i8 %36 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %conv13.i.i = trunc i32 %or.i.i to i16
  %37 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %16, align 4
  %arrayidx15.i.i = getelementptr i16, ptr %38, i32 %j.056.i.i
  %39 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv13.i.i, ptr %arrayidx15.i.i, align 2
  %arrayidx16.i.i = getelementptr i8, ptr %clut.157.i.i, i32 1
  %40 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx16.i.i, align 1
  %conv17.i.i = zext i8 %41 to i32
  %shl18.i.i = shl nuw nsw i32 %conv17.i.i, 8
  %or21.i.i = or i32 %shl18.i.i, %conv17.i.i
  %conv22.i.i = trunc i32 %or21.i.i to i16
  %42 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %17, align 4
  %arrayidx24.i.i = getelementptr i16, ptr %43, i32 %j.056.i.i
  %44 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv22.i.i, ptr %arrayidx24.i.i, align 2
  %arrayidx25.i.i = getelementptr i8, ptr %clut.157.i.i, i32 2
  %45 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx25.i.i, align 1
  %conv26.i.i = zext i8 %46 to i32
  %shl27.i.i = shl nuw nsw i32 %conv26.i.i, 8
  %or30.i.i = or i32 %shl27.i.i, %conv26.i.i
  %conv31.i.i = trunc i32 %or30.i.i to i16
  %47 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %18, align 4
  %arrayidx33.i.i = getelementptr i16, ptr %48, i32 %j.056.i.i
  %49 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv31.i.i, ptr %arrayidx33.i.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %clut.157.i.i, i32 3
  %inc.i.i = add nuw nsw i32 %j.056.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %smax.i.i
  br i1 %exitcond.not.i.i, label %for.body10.i.i.for.end.i.i_crit_edge, label %for.body10.i.i.for.body10.i.i_crit_edge

for.body10.i.i.for.body10.i.i_crit_edge:          ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body10.i.i

for.body10.i.i.for.end.i.i_crit_edge:             ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body10.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %clut.1.lcssa.i.i = phi ptr [ %clut.060.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %add.ptr.i.i, %for.body10.i.i.for.end.i.i_crit_edge ]
  %call.i.i = call i32 @fb_set_cmap(ptr noundef nonnull %palette_cmap.i.i, ptr noundef %info) #14
  %add35.i.i = add i32 %32, %i.059.i.i
  %50 = ptrtoint ptr %clutsize.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %clutsize.i.i, align 4
  %cmp.i.i = icmp ugt i32 %51, %add35.i.i
  br i1 %cmp.i.i, label %for.end.i.i.for.body.i.i_crit_edge, label %for.end.i.i.fb_set_logocmap.exit.i_crit_edge

for.end.i.i.fb_set_logocmap.exit.i_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_set_logocmap.exit.i

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

fb_set_logocmap.exit.i:                           ; preds = %for.end.i.i.fb_set_logocmap.exit.i_crit_edge, %if.then5.i.fb_set_logocmap.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %palette_red.i.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %palette_blue.i.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %palette_green.i.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %palette_cmap.i.i) #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %fb_set_logocmap.exit.i, %if.end.i.if.end6.i_crit_edge
  %52 = load i32, ptr getelementptr inbounds (%struct.logo_data, ptr @fb_logo, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool7.not.i = icmp eq i32 %52, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %if.end6.i.if.then10.i_crit_edge

if.end6.i.if.then10.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i

lor.lhs.false8.i:                                 ; preds = %if.end6.i
  %53 = load i32, ptr getelementptr inbounds (%struct.logo_data, ptr @fb_logo, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool9.not.i = icmp eq i32 %53, 0
  br i1 %tobool9.not.i, label %lor.lhs.false8.i.if.end18.i_crit_edge, label %lor.lhs.false8.i.if.then10.i_crit_edge

lor.lhs.false8.i.if.then10.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10.i

lor.lhs.false8.i.if.end18.i_crit_edge:            ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then10.i:                                      ; preds = %lor.lhs.false8.i.if.then10.i_crit_edge, %if.end6.i.if.then10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3264, i32 noundef 1024) #17
  %cmp11.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp11.i, label %if.then10.i.fb_show_logo_line.exit_crit_edge, label %if.end13.i

if.then10.i.fb_show_logo_line.exit_crit_edge:     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_show_logo_line.exit

if.end13.i:                                       ; preds = %if.then10.i
  %55 = load i32, ptr getelementptr inbounds (%struct.logo_data, ptr @fb_logo, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool14.not.i = icmp eq i32 %55, 0
  %red.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  br i1 %tobool14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end13.i
  %length.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %56 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %length.i.i, align 4
  %58 = call i32 @llvm.umin.i32(i32 %57, i32 8) #14
  %arrayidx.i.i = getelementptr [9 x i8], ptr @fb_set_logo_truepalette.mask, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i, align 1
  %green.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length6.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %61 = ptrtoint ptr %length6.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %length6.i.i, align 4
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 8) #14
  %arrayidx15.i3.i = getelementptr [9 x i8], ptr @fb_set_logo_truepalette.mask, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx15.i3.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx15.i3.i, align 1
  %blue.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length17.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %66 = ptrtoint ptr %length17.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %length17.i.i, align 4
  %68 = call i32 @llvm.umin.i32(i32 %67, i32 8) #14
  %arrayidx26.i.i = getelementptr [9 x i8], ptr @fb_set_logo_truepalette.mask, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx26.i.i, align 1
  %71 = ptrtoint ptr %red.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %red.i, align 4
  %sub.neg.i.i = add i32 %57, -8
  %sub32.i.i = add i32 %sub.neg.i.i, %72
  %73 = ptrtoint ptr %green.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %green.i.i, align 4
  %sub39.neg.i.i = add i32 %62, -8
  %sub40.i.i = add i32 %sub39.neg.i.i, %74
  %75 = ptrtoint ptr %blue.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %blue.i.i, align 4
  %sub47.neg.i.i = add i32 %67, -8
  %sub48.i.i = add i32 %sub47.neg.i.i, %76
  %clutsize.i4.i = getelementptr inbounds %struct.linux_logo, ptr %2, i32 0, i32 3
  %77 = ptrtoint ptr %clutsize.i4.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %clutsize.i4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp4996.not.i.i = icmp eq i32 %78, 0
  br i1 %cmp4996.not.i.i, label %if.then15.i.if.end16.i_crit_edge, label %for.body.lr.ph.i.i

if.then15.i.if.end16.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

for.body.lr.ph.i.i:                               ; preds = %if.then15.i
  %clut1.i5.i = getelementptr inbounds %struct.linux_logo, ptr %2, i32 0, i32 4
  %79 = ptrtoint ptr %clut1.i5.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %clut1.i5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub32.i.i)
  %cmp.i.i.i = icmp slt i32 %sub32.i.i, 0
  %sub.i.i.i = sub i32 0, %sub32.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub40.i.i)
  %cmp.i86.i.i = icmp slt i32 %sub40.i.i, 0
  %sub.i87.i.i = sub i32 0, %sub40.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub48.i.i)
  %cmp.i91.i.i = icmp slt i32 %sub48.i.i, 0
  %sub.i92.i.i = sub i32 0, %sub48.i.i
  br label %for.body.i10.i

for.body.i10.i:                                   ; preds = %for.body.i10.i.for.body.i10.i_crit_edge, %for.body.lr.ph.i.i
  %clut.098.i.i = phi ptr [ %80, %for.body.lr.ph.i.i ], [ %add.ptr.i8.i, %for.body.i10.i.for.body.i10.i_crit_edge ]
  %i.097.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i9.i, %for.body.i10.i.for.body.i10.i_crit_edge ]
  %81 = ptrtoint ptr %clut.098.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %clut.098.i.i, align 1
  %and83.i.i = and i8 %82, %60
  %and.i.i = zext i8 %and83.i.i to i32
  %shr.i.i.i = lshr i32 %and.i.i, %sub.i.i.i
  %shl.i.i.i = shl i32 %and.i.i, %sub32.i.i
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 %shr.i.i.i, i32 %shl.i.i.i
  %arrayidx52.i.i = getelementptr i8, ptr %clut.098.i.i, i32 1
  %83 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx52.i.i, align 1
  %and5584.i.i = and i8 %84, %65
  %and55.i.i = zext i8 %and5584.i.i to i32
  %shr.i88.i.i = lshr i32 %and55.i.i, %sub.i87.i.i
  %shl.i89.i.i = shl i32 %and55.i.i, %sub40.i.i
  %cond.i90.i.i = select i1 %cmp.i86.i.i, i32 %shr.i88.i.i, i32 %shl.i89.i.i
  %or.i6.i = or i32 %cond.i90.i.i, %cond.i.i.i
  %arrayidx57.i.i = getelementptr i8, ptr %clut.098.i.i, i32 2
  %85 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx57.i.i, align 1
  %and6085.i.i = and i8 %86, %70
  %and60.i.i = zext i8 %and6085.i.i to i32
  %shr.i93.i.i = lshr i32 %and60.i.i, %sub.i92.i.i
  %shl.i94.i.i = shl i32 %and60.i.i, %sub48.i.i
  %cond.i95.i.i = select i1 %cmp.i91.i.i, i32 %shr.i93.i.i, i32 %shl.i94.i.i
  %or62.i.i = or i32 %or.i6.i, %cond.i95.i.i
  %add.i7.i = add i32 %i.097.i.i, 32
  %arrayidx63.i.i = getelementptr i32, ptr %call7.i.i, i32 %add.i7.i
  %87 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or62.i.i, ptr %arrayidx63.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %clut.098.i.i, i32 3
  %inc.i9.i = add nuw i32 %i.097.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i9.i, %78
  br i1 %exitcond.not.i, label %for.body.i10.i.if.end16.i_crit_edge, label %for.body.i10.i.for.body.i10.i_crit_edge

for.body.i10.i.for.body.i10.i_crit_edge:          ; preds = %for.body.i10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i10.i

for.body.i10.i.if.end16.i_crit_edge:              ; preds = %for.body.i10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end13.i
  %88 = ptrtoint ptr %red.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %red.i, align 4
  %green.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %90 = ptrtoint ptr %green.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %green.i, align 4
  %blue.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %92 = ptrtoint ptr %blue.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %blue.i, align 4
  %clutsize.i = getelementptr inbounds %struct.linux_logo, ptr %2, i32 0, i32 3
  %94 = ptrtoint ptr %clutsize.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %clutsize.i, align 4
  %96 = add i32 %95, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33, i32 %96)
  %cmp16.i33 = icmp ult i32 %96, -33
  br i1 %cmp16.i33, label %if.else.i.for.body.i_crit_edge, label %if.else.i.if.end16.i_crit_edge

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.i.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i35, %for.body.i.for.body.i_crit_edge ], [ 32, %if.else.i.for.body.i_crit_edge ]
  %shl.i34 = shl i32 %i.017.i, %89
  %shl5.i = shl i32 %i.017.i, %91
  %or.i = or i32 %shl.i34, %shl5.i
  %shl6.i = shl i32 %i.017.i, %93
  %or7.i = or i32 %or.i, %shl6.i
  %arrayidx.i = getelementptr i32, ptr %call7.i.i, i32 %i.017.i
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or7.i, ptr %arrayidx.i, align 4
  %inc.i35 = add nuw i32 %i.017.i, 1
  %98 = ptrtoint ptr %clutsize.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %clutsize.i, align 4
  %add.i36 = add i32 %99, 32
  %cmp.i37 = icmp ult i32 %inc.i35, %add.i36
  br i1 %cmp.i37, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end16.i_crit_edge

for.body.i.if.end16.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end16.i:                                       ; preds = %for.body.i.if.end16.i_crit_edge, %if.else.i.if.end16.i_crit_edge, %for.body.i10.i.if.end16.i_crit_edge, %if.then15.i.if.end16.i_crit_edge
  %pseudo_palette.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %100 = ptrtoint ptr %pseudo_palette.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pseudo_palette.i, align 4
  store ptr %call7.i.i, ptr %pseudo_palette.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end16.i, %lor.lhs.false8.i.if.end18.i_crit_edge
  %palette.0.i = phi ptr [ %call7.i.i, %if.end16.i ], [ null, %lor.lhs.false8.i.if.end18.i_crit_edge ]
  %saved_pseudo_palette.0.i = phi ptr [ %101, %if.end16.i ], [ null, %lor.lhs.false8.i.if.end18.i_crit_edge ]
  %102 = load i32, ptr @fb_logo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %102)
  %cmp19.i = icmp slt i32 %102, 5
  br i1 %cmp19.i, label %if.then20.i, label %if.end18.i.if.end30.i_crit_edge

if.end18.i.if.end30.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

if.then20.i:                                      ; preds = %if.end18.i
  %width.i = getelementptr inbounds %struct.linux_logo, ptr %2, i32 0, i32 1
  %103 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.linux_logo, ptr %2, i32 0, i32 2
  %105 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %height.i, align 4
  %107 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %104, i32 %106) #14
  %108 = extractvalue { i32, i1 } %107, 1
  br i1 %108, label %if.then20.i.if.then23.i_crit_edge, label %if.end7.i.i, !prof !146

if.then20.i.if.then23.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23.i

if.end7.i.i:                                      ; preds = %if.then20.i
  %109 = extractvalue { i32, i1 } %107, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %109, i32 noundef 3264) #18
  %cmp22.i = icmp eq ptr %call8.i.i, null
  br i1 %cmp22.i, label %if.end7.i.i.if.then23.i_crit_edge, label %if.end28.i

if.end7.i.i.if.then23.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then23.i

if.then23.i:                                      ; preds = %if.end7.i.i.if.then23.i_crit_edge, %if.then20.i.if.then23.i_crit_edge
  call void @kfree(ptr noundef %palette.0.i) #14
  %tobool24.not.i = icmp eq ptr %saved_pseudo_palette.0.i, null
  br i1 %tobool24.not.i, label %if.then23.i.fb_show_logo_line.exit_crit_edge, label %if.then25.i

if.then23.i.fb_show_logo_line.exit_crit_edge:     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_show_logo_line.exit

if.then25.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #16
  %pseudo_palette26.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %110 = ptrtoint ptr %pseudo_palette26.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %saved_pseudo_palette.0.i, ptr %pseudo_palette26.i, align 4
  br label %fb_show_logo_line.exit

if.end28.i:                                       ; preds = %if.end7.i.i
  %111 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call8.i.i, ptr %data3.i, align 4
  %112 = load i32, ptr @fb_logo, align 4
  %113 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data.i, align 4
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %115 = ptrtoint ptr %visual.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %visual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp.i20 = icmp eq i32 %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %116)
  %switch.i.i = icmp ult i32 %116, 2
  br i1 %switch.i.i, label %if.then.i27, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.end28.i
  %green.i.i21 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length.i.i22 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %117 = ptrtoint ptr %length.i.i22 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %length.i.i22, align 4
  %blue.i.i23 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length3.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %119 = ptrtoint ptr %length3.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %length3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp4.i.i = icmp eq i32 %118, %120
  br i1 %cmp4.i.i, label %land.lhs.true.i.i25, label %if.else.i.i.if.else23.i.i_crit_edge

if.else.i.i.if.else23.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else23.i.i

land.lhs.true.i.i25:                              ; preds = %if.else.i.i
  %red.i.i24 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length7.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %121 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %length7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %122)
  %cmp8.i.i = icmp eq i32 %118, %122
  br i1 %cmp8.i.i, label %land.lhs.true9.i.i, label %land.lhs.true.i.i25.if.else23.i.i_crit_edge

land.lhs.true.i.i25.if.else23.i.i_crit_edge:      ; preds = %land.lhs.true.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else23.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i25
  %123 = ptrtoint ptr %green.i.i21 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %green.i.i21, align 4
  %125 = ptrtoint ptr %blue.i.i23 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %blue.i.i23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %126)
  %cmp13.i.i = icmp eq i32 %124, %126
  br i1 %cmp13.i.i, label %land.lhs.true14.i.i, label %land.lhs.true9.i.i.if.else23.i.i_crit_edge

land.lhs.true9.i.i.if.else23.i.i_crit_edge:       ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else23.i.i

land.lhs.true14.i.i:                              ; preds = %land.lhs.true9.i.i
  %127 = ptrtoint ptr %red.i.i24 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %red.i.i24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %128)
  %cmp19.i.i = icmp eq i32 %124, %128
  br i1 %cmp19.i.i, label %land.lhs.true14.i.i..thread111.i_crit_edge, label %land.lhs.true14.i.i.if.else23.i.i_crit_edge

land.lhs.true14.i.i.if.else23.i.i_crit_edge:      ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else23.i.i

land.lhs.true14.i.i..thread111.i_crit_edge:       ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %.thread111.i

if.else23.i.i:                                    ; preds = %land.lhs.true14.i.i.if.else23.i.i_crit_edge, %land.lhs.true9.i.i.if.else23.i.i_crit_edge, %land.lhs.true.i.i25.if.else23.i.i_crit_edge, %if.else.i.i.if.else23.i.i_crit_edge
  %length27.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %129 = ptrtoint ptr %length27.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %length27.i.i, align 4
  %add.i.i26 = add i32 %120, %118
  %add30.i.i = add i32 %add.i.i26, %130
  br label %.thread111.i

.thread111.i:                                     ; preds = %if.else23.i.i, %land.lhs.true14.i.i..thread111.i_crit_edge
  %depth.0.i.i = phi i32 [ %add30.i.i, %if.else23.i.i ], [ %118, %land.lhs.true14.i.i..thread111.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %depth.0.i.i)
  %switch.selectcmp.i = icmp eq i32 %depth.0.i.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i8 1, i8 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %depth.0.i.i)
  %switch.selectcmp114.i = icmp eq i32 %depth.0.i.i, 2
  %switch.select115.i = select i1 %switch.selectcmp114.i, i8 3, i8 %switch.select.i
  br label %if.end.i28

if.then.i27:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  %length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %131 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %length.i, align 4
  %shl.i = shl i32 4095, %132
  %133 = trunc i32 %shl.i to i8
  %conv14.i = xor i8 %133, -1
  br label %if.end.i28

if.end.i28:                                       ; preds = %if.then.i27, %.thread111.i
  %fg.1.i = phi i8 [ %conv14.i, %if.then.i27 ], [ %switch.select115.i, %.thread111.i ]
  %134 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %112, label %if.end.i28.if.end30.i_crit_edge [
    i32 4, label %for.cond.preheader.i
    i32 1, label %for.cond38.preheader.i
  ]

if.end.i28.if.end30.i_crit_edge:                  ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

for.cond38.preheader.i:                           ; preds = %if.end.i28
  %135 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp40125.not.i = icmp eq i32 %136, 0
  br i1 %cmp40125.not.i, label %for.cond38.preheader.i.if.end30.i_crit_edge, label %for.cond43.preheader.lr.ph.i

for.cond38.preheader.i.if.end30.i_crit_edge:      ; preds = %for.cond38.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

for.cond43.preheader.lr.ph.i:                     ; preds = %for.cond38.preheader.i
  %conv49.i = sext i1 %cmp.i20 to i8
  br label %for.cond43.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i28
  %137 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp16135.not.i = icmp eq i32 %138, 0
  br i1 %cmp16135.not.i, label %for.cond.preheader.i.if.end30.i_crit_edge, label %for.cond.preheader.i.for.cond18.preheader.i_crit_edge

for.cond.preheader.i.for.cond18.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  br label %for.cond18.preheader.i

for.cond.preheader.i.if.end30.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

for.cond18.preheader.i:                           ; preds = %for.inc34.i.for.cond18.preheader.i_crit_edge, %for.cond.preheader.i.for.cond18.preheader.i_crit_edge
  %src.0138.i = phi ptr [ %src.1.lcssa.i, %for.inc34.i.for.cond18.preheader.i_crit_edge ], [ %114, %for.cond.preheader.i.for.cond18.preheader.i_crit_edge ]
  %i.0137.i = phi i32 [ %inc35.i, %for.inc34.i.for.cond18.preheader.i_crit_edge ], [ 0, %for.cond.preheader.i.for.cond18.preheader.i_crit_edge ]
  %dst.addr.0136.i = phi ptr [ %dst.addr.1.lcssa.i, %for.inc34.i.for.cond18.preheader.i_crit_edge ], [ %call8.i.i, %for.cond.preheader.i.for.cond18.preheader.i_crit_edge ]
  %139 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp19129.not.i = icmp eq i32 %140, 0
  br i1 %cmp19129.not.i, label %for.cond18.preheader.i.for.inc34.i_crit_edge, label %for.cond18.preheader.i.for.body21.i_crit_edge

for.cond18.preheader.i.for.body21.i_crit_edge:    ; preds = %for.cond18.preheader.i
  br label %for.body21.i

for.cond18.preheader.i.for.inc34.i_crit_edge:     ; preds = %for.cond18.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc34.i

for.body21.i:                                     ; preds = %for.inc.i.for.body21.i_crit_edge, %for.cond18.preheader.i.for.body21.i_crit_edge
  %src.1132.i = phi ptr [ %incdec.ptr33.i, %for.inc.i.for.body21.i_crit_edge ], [ %src.0138.i, %for.cond18.preheader.i.for.body21.i_crit_edge ]
  %j.0131.i = phi i32 [ %j.1.i, %for.inc.i.for.body21.i_crit_edge ], [ 0, %for.cond18.preheader.i.for.body21.i_crit_edge ]
  %dst.addr.1130.i = phi ptr [ %dst.addr.2.i, %for.inc.i.for.body21.i_crit_edge ], [ %dst.addr.0136.i, %for.cond18.preheader.i.for.body21.i_crit_edge ]
  %141 = ptrtoint ptr %src.1132.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %src.1132.i, align 1
  %143 = lshr i8 %142, 4
  %incdec.ptr.i = getelementptr i8, ptr %dst.addr.1130.i, i32 1
  %144 = ptrtoint ptr %dst.addr.1130.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %dst.addr.1130.i, align 1
  %inc.i = add nuw i32 %j.0131.i, 1
  %145 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %146)
  %cmp25.i = icmp ult i32 %inc.i, %146
  br i1 %cmp25.i, label %if.then27.i, label %for.body21.i.for.inc.i_crit_edge

for.body21.i.for.inc.i_crit_edge:                 ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then27.i:                                      ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #16
  %147 = ptrtoint ptr %src.1132.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %src.1132.i, align 1
  %149 = and i8 %148, 15
  %incdec.ptr30.i = getelementptr i8, ptr %dst.addr.1130.i, i32 2
  %150 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %incdec.ptr.i, align 1
  %inc31.i = add nuw i32 %j.0131.i, 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then27.i, %for.body21.i.for.inc.i_crit_edge
  %dst.addr.2.i = phi ptr [ %incdec.ptr30.i, %if.then27.i ], [ %incdec.ptr.i, %for.body21.i.for.inc.i_crit_edge ]
  %j.1.i = phi i32 [ %inc31.i, %if.then27.i ], [ %inc.i, %for.body21.i.for.inc.i_crit_edge ]
  %incdec.ptr33.i = getelementptr i8, ptr %src.1132.i, i32 1
  %151 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %width.i, align 4
  %cmp19.i31 = icmp ult i32 %j.1.i, %152
  br i1 %cmp19.i31, label %for.inc.i.for.body21.i_crit_edge, label %for.inc.i.for.inc34.i_crit_edge

for.inc.i.for.inc34.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc34.i

for.inc.i.for.body21.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body21.i

for.inc34.i:                                      ; preds = %for.inc.i.for.inc34.i_crit_edge, %for.cond18.preheader.i.for.inc34.i_crit_edge
  %dst.addr.1.lcssa.i = phi ptr [ %dst.addr.0136.i, %for.cond18.preheader.i.for.inc34.i_crit_edge ], [ %dst.addr.2.i, %for.inc.i.for.inc34.i_crit_edge ]
  %src.1.lcssa.i = phi ptr [ %src.0138.i, %for.cond18.preheader.i.for.inc34.i_crit_edge ], [ %incdec.ptr33.i, %for.inc.i.for.inc34.i_crit_edge ]
  %inc35.i = add nuw i32 %i.0137.i, 1
  %153 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %height.i, align 4
  %cmp16.i = icmp ult i32 %inc35.i, %154
  br i1 %cmp16.i, label %for.inc34.i.for.cond18.preheader.i_crit_edge, label %for.inc34.i.if.end30.i_crit_edge

for.inc34.i.if.end30.i_crit_edge:                 ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

for.inc34.i.for.cond18.preheader.i_crit_edge:     ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond18.preheader.i

for.cond43.preheader.i:                           ; preds = %for.inc72.i.for.cond43.preheader.i_crit_edge, %for.cond43.preheader.lr.ph.i
  %src.2128.i = phi ptr [ %114, %for.cond43.preheader.lr.ph.i ], [ %src.3.lcssa.i, %for.inc72.i.for.cond43.preheader.i_crit_edge ]
  %i.1127.i = phi i32 [ 0, %for.cond43.preheader.lr.ph.i ], [ %inc73.i, %for.inc72.i.for.cond43.preheader.i_crit_edge ]
  %dst.addr.3126.i = phi ptr [ %call8.i.i, %for.cond43.preheader.lr.ph.i ], [ %dst.addr.4.lcssa.i, %for.inc72.i.for.cond43.preheader.i_crit_edge ]
  %155 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp45120.not.i = icmp eq i32 %156, 0
  br i1 %cmp45120.not.i, label %for.cond43.preheader.i.for.inc72.i_crit_edge, label %for.cond43.preheader.i.for.body47.i_crit_edge

for.cond43.preheader.i.for.body47.i_crit_edge:    ; preds = %for.cond43.preheader.i
  br label %for.body47.i

for.cond43.preheader.i.for.inc72.i_crit_edge:     ; preds = %for.cond43.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc72.i

for.body47.i:                                     ; preds = %for.inc69.i.for.body47.i_crit_edge, %for.cond43.preheader.i.for.body47.i_crit_edge
  %src.3123.i = phi ptr [ %incdec.ptr70.i, %for.inc69.i.for.body47.i_crit_edge ], [ %src.2128.i, %for.cond43.preheader.i.for.body47.i_crit_edge ]
  %j.2122.i = phi i32 [ %j.3.lcssa.i, %for.inc69.i.for.body47.i_crit_edge ], [ 0, %for.cond43.preheader.i.for.body47.i_crit_edge ]
  %dst.addr.4121.i = phi ptr [ %dst.addr.5.lcssa.i, %for.inc69.i.for.body47.i_crit_edge ], [ %dst.addr.3126.i, %for.cond43.preheader.i.for.body47.i_crit_edge ]
  %157 = ptrtoint ptr %src.3123.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %src.3123.i, align 1
  %xor50.i = xor i8 %158, %conv49.i
  %conv59.i = zext i8 %xor50.i to i32
  %159 = add i32 %j.2122.i, 8
  %160 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.2122.i, i32 %161)
  %cmp56.i = icmp ult i32 %j.2122.i, %161
  br i1 %cmp56.i, label %for.body58.i, label %for.body47.i.for.inc69.i_crit_edge

for.body47.i.for.inc69.i_crit_edge:               ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc69.i

for.body58.i:                                     ; preds = %for.body47.i
  %162 = and i32 %conv59.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.i32 = icmp eq i32 %162, 0
  %spec.select.i = select i1 %tobool.not.i32, i8 0, i8 %fg.1.i
  %incdec.ptr65.i = getelementptr i8, ptr %dst.addr.4121.i, i32 1
  %163 = ptrtoint ptr %dst.addr.4121.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %spec.select.i, ptr %dst.addr.4121.i, align 1
  %inc66.i = add nuw i32 %j.2122.i, 1
  %164 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc66.i, i32 %165)
  %cmp56.1.i = icmp ult i32 %inc66.i, %165
  br i1 %cmp56.1.i, label %for.body58.1.i, label %for.body58.i.for.inc69.i_crit_edge

for.body58.i.for.inc69.i_crit_edge:               ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc69.i

for.body58.1.i:                                   ; preds = %for.body58.i
  %166 = and i32 %conv59.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool.not.1.i = icmp eq i32 %166, 0
  %spec.select.1.i = select i1 %tobool.not.1.i, i8 0, i8 %fg.1.i
  %incdec.ptr65.1.i = getelementptr i8, ptr %dst.addr.4121.i, i32 2
  %167 = ptrtoint ptr %incdec.ptr65.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %spec.select.1.i, ptr %incdec.ptr65.i, align 1
  %inc66.1.i = add nuw i32 %j.2122.i, 2
  %168 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc66.1.i, i32 %169)
  %cmp56.2.i = icmp ult i32 %inc66.1.i, %169
  br i1 %cmp56.2.i, label %for.body58.2.i, label %for.body58.1.i.for.inc69.i_crit_edge

for.body58.1.i.for.inc69.i_crit_edge:             ; preds = %for.body58.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc69.i

for.body58.2.i:                                   ; preds = %for.body58.1.i
  %170 = and i32 %conv59.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.2.i = icmp eq i32 %170, 0
  %spec.select.2.i = select i1 %tobool.not.2.i, i8 0, i8 %fg.1.i
  %incdec.ptr65.2.i = getelementptr i8, ptr %dst.addr.4121.i, i32 3
  %171 = ptrtoint ptr %incdec.ptr65.1.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %spec.select.2.i, ptr %incdec.ptr65.1.i, align 1
  %inc66.2.i = add nuw i32 %j.2122.i, 3
  %172 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc66.2.i, i32 %173)
  %cmp56.3.i = icmp ult i32 %inc66.2.i, %173
  br i1 %cmp56.3.i, label %for.body58.3.i, label %for.body58.2.i.for.inc69.i_crit_edge

for.body58.2.i.for.inc69.i_crit_edge:             ; preds = %for.body58.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc69.i

for.body58.3.i:                                   ; preds = %for.body58.2.i
  %174 = and i32 %conv59.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.not.3.i = icmp eq i32 %174, 0
  %spec.select.3.i = select i1 %tobool.not.3.i, i8 0, i8 %fg.1.i
  %incdec.ptr65.3.i = getelementptr i8, ptr %dst.addr.4121.i, i32 4
  %175 = ptrtoint ptr %incdec.ptr65.2.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %spec.select.3.i, ptr %incdec.ptr65.2.i, align 1
  %inc66.3.i = add nuw i32 %j.2122.i, 4
  %176 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc66.3.i, i32 %177)
  %cmp56.4.i = icmp ult i32 %inc66.3.i, %177
  br i1 %cmp56.4.i, label %for.body58.4.i, label %for.body58.3.i.for.inc69.i_crit_edge

for.body58.3.i.for.inc69.i_crit_edge:             ; preds = %for.body58.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc69.i

for.body58.4.i:                                   ; preds = %for.body58.3.i
  %178 = and i32 %conv59.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool.not.4.i = icmp eq i32 %178, 0
  %spec.select.4.i = select i1 %tobool.not.4.i, i8 0, i8 %fg.1.i
  %incdec.ptr65.4.i = getelementptr i8, ptr %dst.addr.4121.i, i32 5
  %179 = ptrtoint ptr %incdec.ptr65.3.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %spec.select.4.i, ptr %incdec.ptr65.3.i, align 1
  %inc66.4.i = add nuw i32 %j.2122.i, 5
  %180 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc66.4.i, i32 %181)
  %cmp56.5.i = icmp ult i32 %inc66.4.i, %181
  br i1 %cmp56.5.i, label %for.body58.5.i, label %for.body58.4.i.for.inc69.i_crit_edge

for.body58.4.i.for.inc69.i_crit_edge:             ; preds = %for.body58.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc69.i

for.body58.5.i:                                   ; preds = %for.body58.4.i
  %182 = and i32 %conv59.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.5.i = icmp eq i32 %182, 0
  %spec.select.5.i = select i1 %tobool.not.5.i, i8 0, i8 %fg.1.i
  %incdec.ptr65.5.i = getelementptr i8, ptr %dst.addr.4121.i, i32 6
  %183 = ptrtoint ptr %incdec.ptr65.4.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %spec.select.5.i, ptr %incdec.ptr65.4.i, align 1
  %inc66.5.i = add nuw i32 %j.2122.i, 6
  %184 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc66.5.i, i32 %185)
  %cmp56.6.i = icmp ult i32 %inc66.5.i, %185
  br i1 %cmp56.6.i, label %for.body58.6.i, label %for.body58.5.i.for.inc69.i_crit_edge

for.body58.5.i.for.inc69.i_crit_edge:             ; preds = %for.body58.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc69.i

for.body58.6.i:                                   ; preds = %for.body58.5.i
  %186 = and i32 %conv59.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.6.i = icmp eq i32 %186, 0
  %spec.select.6.i = select i1 %tobool.not.6.i, i8 0, i8 %fg.1.i
  %incdec.ptr65.6.i = getelementptr i8, ptr %dst.addr.4121.i, i32 7
  %187 = ptrtoint ptr %incdec.ptr65.5.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %spec.select.6.i, ptr %incdec.ptr65.5.i, align 1
  %inc66.6.i = add nuw i32 %j.2122.i, 7
  %188 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc66.6.i, i32 %189)
  %cmp56.7.i = icmp ult i32 %inc66.6.i, %189
  br i1 %cmp56.7.i, label %for.body58.7.i, label %for.body58.6.i.for.inc69.i_crit_edge

for.body58.6.i.for.inc69.i_crit_edge:             ; preds = %for.body58.6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc69.i

for.body58.7.i:                                   ; preds = %for.body58.6.i
  call void @__sanitizer_cov_trace_pc() #16
  %190 = and i32 %conv59.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.7.i = icmp eq i32 %190, 0
  %spec.select.7.i = select i1 %tobool.not.7.i, i8 0, i8 %fg.1.i
  %incdec.ptr65.7.i = getelementptr i8, ptr %dst.addr.4121.i, i32 8
  %191 = ptrtoint ptr %incdec.ptr65.6.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %spec.select.7.i, ptr %incdec.ptr65.6.i, align 1
  br label %for.inc69.i

for.inc69.i:                                      ; preds = %for.body58.7.i, %for.body58.6.i.for.inc69.i_crit_edge, %for.body58.5.i.for.inc69.i_crit_edge, %for.body58.4.i.for.inc69.i_crit_edge, %for.body58.3.i.for.inc69.i_crit_edge, %for.body58.2.i.for.inc69.i_crit_edge, %for.body58.1.i.for.inc69.i_crit_edge, %for.body58.i.for.inc69.i_crit_edge, %for.body47.i.for.inc69.i_crit_edge
  %dst.addr.5.lcssa.i = phi ptr [ %dst.addr.4121.i, %for.body47.i.for.inc69.i_crit_edge ], [ %incdec.ptr65.i, %for.body58.i.for.inc69.i_crit_edge ], [ %incdec.ptr65.1.i, %for.body58.1.i.for.inc69.i_crit_edge ], [ %incdec.ptr65.2.i, %for.body58.2.i.for.inc69.i_crit_edge ], [ %incdec.ptr65.3.i, %for.body58.3.i.for.inc69.i_crit_edge ], [ %incdec.ptr65.4.i, %for.body58.4.i.for.inc69.i_crit_edge ], [ %incdec.ptr65.5.i, %for.body58.5.i.for.inc69.i_crit_edge ], [ %incdec.ptr65.6.i, %for.body58.6.i.for.inc69.i_crit_edge ], [ %incdec.ptr65.7.i, %for.body58.7.i ]
  %j.3.lcssa.i = phi i32 [ %j.2122.i, %for.body47.i.for.inc69.i_crit_edge ], [ %inc66.i, %for.body58.i.for.inc69.i_crit_edge ], [ %inc66.1.i, %for.body58.1.i.for.inc69.i_crit_edge ], [ %inc66.2.i, %for.body58.2.i.for.inc69.i_crit_edge ], [ %inc66.3.i, %for.body58.3.i.for.inc69.i_crit_edge ], [ %inc66.4.i, %for.body58.4.i.for.inc69.i_crit_edge ], [ %inc66.5.i, %for.body58.5.i.for.inc69.i_crit_edge ], [ %inc66.6.i, %for.body58.6.i.for.inc69.i_crit_edge ], [ %159, %for.body58.7.i ]
  %incdec.ptr70.i = getelementptr i8, ptr %src.3123.i, i32 1
  %192 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %width.i, align 4
  %cmp45.i = icmp ult i32 %j.3.lcssa.i, %193
  br i1 %cmp45.i, label %for.inc69.i.for.body47.i_crit_edge, label %for.inc69.i.for.inc72.i_crit_edge

for.inc69.i.for.inc72.i_crit_edge:                ; preds = %for.inc69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc72.i

for.inc69.i.for.body47.i_crit_edge:               ; preds = %for.inc69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body47.i

for.inc72.i:                                      ; preds = %for.inc69.i.for.inc72.i_crit_edge, %for.cond43.preheader.i.for.inc72.i_crit_edge
  %dst.addr.4.lcssa.i = phi ptr [ %dst.addr.3126.i, %for.cond43.preheader.i.for.inc72.i_crit_edge ], [ %dst.addr.5.lcssa.i, %for.inc69.i.for.inc72.i_crit_edge ]
  %src.3.lcssa.i = phi ptr [ %src.2128.i, %for.cond43.preheader.i.for.inc72.i_crit_edge ], [ %incdec.ptr70.i, %for.inc69.i.for.inc72.i_crit_edge ]
  %inc73.i = add nuw i32 %i.1127.i, 1
  %194 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %height.i, align 4
  %cmp40.i = icmp ult i32 %inc73.i, %195
  br i1 %cmp40.i, label %for.inc72.i.for.cond43.preheader.i_crit_edge, label %for.inc72.i.if.end30.i_crit_edge

for.inc72.i.if.end30.i_crit_edge:                 ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30.i

for.inc72.i.for.cond43.preheader.i_crit_edge:     ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond43.preheader.i

if.end30.i:                                       ; preds = %for.inc72.i.if.end30.i_crit_edge, %for.inc34.i.if.end30.i_crit_edge, %for.cond.preheader.i.if.end30.i_crit_edge, %for.cond38.preheader.i.if.end30.i_crit_edge, %if.end.i28.if.end30.i_crit_edge, %if.end18.i.if.end30.i_crit_edge
  %logo_new.0.i = phi ptr [ null, %if.end18.i.if.end30.i_crit_edge ], [ %call8.i.i, %if.end.i28.if.end30.i_crit_edge ], [ %call8.i.i, %for.cond38.preheader.i.if.end30.i_crit_edge ], [ %call8.i.i, %for.cond.preheader.i.if.end30.i_crit_edge ], [ %call8.i.i, %for.inc34.i.if.end30.i_crit_edge ], [ %call8.i.i, %for.inc72.i.if.end30.i_crit_edge ]
  %196 = load i8, ptr @fb_center_logo, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool31.not.i = icmp eq i8 %196, 0
  br i1 %tobool31.not.i, label %if.else57.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end30.i
  %var.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %yres35.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %197 = zext i32 %rotate to i64
  call void @__sanitizer_cov_trace_switch(i64 %197, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %rotate, label %if.then32.i.if.end44.i_crit_edge [
    i32 1, label %if.then32.i.if.then39.i_crit_edge
    i32 3, label %if.then32.i.if.then39.i_crit_edge76
  ]

if.then32.i.if.then39.i_crit_edge76:              ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then39.i

if.then32.i.if.then39.i_crit_edge:                ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then39.i

if.then32.i.if.end44.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44.i

if.then39.i:                                      ; preds = %if.then32.i.if.then39.i_crit_edge, %if.then32.i.if.then39.i_crit_edge76
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then39.i, %if.then32.i.if.end44.i_crit_edge
  %xres.0.in.i = phi ptr [ %yres35.i, %if.then39.i ], [ %var.i, %if.then32.i.if.end44.i_crit_edge ]
  %yres.0.in.i = phi ptr [ %var.i, %if.then39.i ], [ %yres35.i, %if.then32.i.if.end44.i_crit_edge ]
  %198 = ptrtoint ptr %yres.0.in.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %yres.0.i = load i32, ptr %yres.0.in.i, align 4
  %199 = ptrtoint ptr %xres.0.in.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %xres.0.i = load i32, ptr %xres.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool45.not70.i = icmp eq i32 %cond, 0
  br i1 %tobool45.not70.i, label %if.end44.i.while.end.i_crit_edge, label %land.rhs.lr.ph.i

if.end44.i.while.end.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

land.rhs.lr.ph.i:                                 ; preds = %if.end44.i
  %width46.i = getelementptr inbounds %struct.linux_logo, ptr %2, i32 0, i32 1
  %200 = ptrtoint ptr %width46.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %width46.i, align 4
  %add.i = add i32 %201, 8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %n.addr.071.i = phi i32 [ %cond, %land.rhs.lr.ph.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %mul.i = mul i32 %n.addr.071.i, %add.i
  %sub.i = add i32 %mul.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %xres.0.i)
  %cmp47.i = icmp ugt i32 %sub.i, %xres.0.i
  br i1 %cmp47.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add i32 %n.addr.071.i, -1
  %tobool45.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool45.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %if.end44.i.while.end.i_crit_edge
  %n.addr.0.lcssa.i = phi i32 [ 0, %if.end44.i.while.end.i_crit_edge ], [ %n.addr.071.i, %land.rhs.i.while.end.i_crit_edge ], [ 0, %while.body.i.while.end.i_crit_edge ]
  %width48.i = getelementptr inbounds %struct.linux_logo, ptr %2, i32 0, i32 1
  %202 = ptrtoint ptr %width48.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %width48.i, align 4
  %add49.neg.i = sub i32 -8, %203
  %mul50.neg73.i = mul i32 %add49.neg.i, %n.addr.0.lcssa.i
  %sub51.i = add i32 %xres.0.i, -8
  %sub52.i = add i32 %sub51.i, %mul50.neg73.i
  %div1.i = lshr i32 %sub52.i, 1
  %204 = ptrtoint ptr %image.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %div1.i, ptr %image.i, align 4
  %height54.i = getelementptr inbounds %struct.linux_logo, ptr %2, i32 0, i32 2
  %205 = ptrtoint ptr %height54.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %height54.i, align 4
  %sub55.i = sub i32 %yres.0.i, %206
  %div562.i = lshr i32 %sub55.i, 1
  br label %if.end60.i

if.else57.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  %207 = ptrtoint ptr %image.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %image.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.else57.i, %while.end.i
  %.sink.i = phi i32 [ 0, %if.else57.i ], [ %div562.i, %while.end.i ]
  %n.addr.1.i = phi i32 [ %cond, %if.else57.i ], [ %n.addr.0.lcssa.i, %while.end.i ]
  %dy59.i = getelementptr inbounds %struct.fb_image, ptr %image.i, i32 0, i32 1
  %208 = ptrtoint ptr %dy59.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %.sink.i, ptr %dy59.i, align 4
  %width61.i = getelementptr inbounds %struct.linux_logo, ptr %2, i32 0, i32 1
  %209 = ptrtoint ptr %width61.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %width61.i, align 4
  %width62.i = getelementptr inbounds %struct.fb_image, ptr %image.i, i32 0, i32 2
  %211 = ptrtoint ptr %width62.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %width62.i, align 4
  %height63.i = getelementptr inbounds %struct.linux_logo, ptr %2, i32 0, i32 2
  %212 = ptrtoint ptr %height63.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %height63.i, align 4
  %height64.i = getelementptr inbounds %struct.fb_image, ptr %image.i, i32 0, i32 3
  %214 = ptrtoint ptr %height64.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %height64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rotate)
  %tobool65.not.i = icmp eq i32 %rotate, 0
  br i1 %tobool65.not.i, label %if.end60.i.if.end73.i_crit_edge, label %if.then66.i

if.end60.i.if.end73.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

if.then66.i:                                      ; preds = %if.end60.i
  %215 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %210, i32 %213) #14
  %216 = extractvalue { i32, i1 } %215, 1
  br i1 %216, label %if.then66.i.if.end73.i_crit_edge, label %if.end7.i44.i, !prof !146

if.then66.i.if.end73.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

if.end7.i44.i:                                    ; preds = %if.then66.i
  %217 = extractvalue { i32, i1 } %215, 0
  %call8.i43.i = call noalias align 128 ptr @__kmalloc(i32 noundef %217, i32 noundef 3264) #18
  %tobool70.not.i = icmp eq ptr %call8.i43.i, null
  br i1 %tobool70.not.i, label %if.end7.i44.i.if.end73.i_crit_edge, label %if.then71.i

if.end7.i44.i.if.end73.i_crit_edge:               ; preds = %if.end7.i44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

if.then71.i:                                      ; preds = %if.end7.i44.i
  %218 = zext i32 %rotate to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %rotate, label %if.then71.i.fb_rotate_logo.exit_crit_edge [
    i32 2, label %if.then.i
    i32 1, label %if.then10.i14
    i32 3, label %if.then29.i
  ]

if.then71.i.fb_rotate_logo.exit_crit_edge:        ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_rotate_logo.exit

if.then.i:                                        ; preds = %if.then71.i
  %219 = ptrtoint ptr %width62.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %width62.i, align 4
  %221 = ptrtoint ptr %height64.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %height64.i, align 4
  %mul.i.i = mul i32 %222, %220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool.not4.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %tobool.not4.i.i, label %if.then.i.fb_rotate_logo_ud.exit.i_crit_edge, label %for.body.preheader.i.i

if.then.i.fb_rotate_logo_ud.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_rotate_logo_ud.exit.i

for.body.preheader.i.i:                           ; preds = %if.then.i
  %223 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %data3.i, align 4
  %sub.i.i10 = add i32 %mul.i.i, -1
  %add.ptr.i.i11 = getelementptr i8, ptr %call8.i43.i, i32 %sub.i.i10
  br label %for.body.i.i12

for.body.i.i12:                                   ; preds = %for.body.i.i12.for.body.i.i12_crit_edge, %for.body.preheader.i.i
  %i.07.i.i = phi i32 [ %dec.i.i, %for.body.i.i12.for.body.i.i12_crit_edge ], [ %mul.i.i, %for.body.preheader.i.i ]
  %in.addr.06.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i12.for.body.i.i12_crit_edge ], [ %224, %for.body.preheader.i.i ]
  %out.addr.05.i.i = phi ptr [ %incdec.ptr1.i.i, %for.body.i.i12.for.body.i.i12_crit_edge ], [ %add.ptr.i.i11, %for.body.preheader.i.i ]
  %dec.i.i = add i32 %i.07.i.i, -1
  %incdec.ptr.i.i = getelementptr i8, ptr %in.addr.06.i.i, i32 1
  %225 = ptrtoint ptr %in.addr.06.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %in.addr.06.i.i, align 1
  %incdec.ptr1.i.i = getelementptr i8, ptr %out.addr.05.i.i, i32 -1
  %227 = ptrtoint ptr %out.addr.05.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %out.addr.05.i.i, align 1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i12.fb_rotate_logo_ud.exit.i_crit_edge, label %for.body.i.i12.for.body.i.i12_crit_edge

for.body.i.i12.for.body.i.i12_crit_edge:          ; preds = %for.body.i.i12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i12

for.body.i.i12.fb_rotate_logo_ud.exit.i_crit_edge: ; preds = %for.body.i.i12
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_rotate_logo_ud.exit.i

fb_rotate_logo_ud.exit.i:                         ; preds = %for.body.i.i12.fb_rotate_logo_ud.exit.i_crit_edge, %if.then.i.fb_rotate_logo_ud.exit.i_crit_edge
  %var.i13 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %228 = ptrtoint ptr %var.i13 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %var.i13, align 4
  %230 = ptrtoint ptr %width62.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %width62.i, align 4
  %232 = ptrtoint ptr %image.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %image.i, align 4
  %234 = add i32 %231, %233
  %sub2.i = sub i32 %229, %234
  store i32 %sub2.i, ptr %image.i, align 4
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %235 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %yres.i, align 4
  %237 = ptrtoint ptr %height64.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %height64.i, align 4
  %239 = ptrtoint ptr %dy59.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %dy59.i, align 4
  %241 = add i32 %238, %240
  %sub7.i = sub i32 %236, %241
  store i32 %sub7.i, ptr %dy59.i, align 4
  br label %fb_rotate_logo.exit

if.then10.i14:                                    ; preds = %if.then71.i
  %242 = ptrtoint ptr %width62.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %width62.i, align 4
  %244 = ptrtoint ptr %height64.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %height64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %cmp17.not.i.i = icmp eq i32 %245, 0
  br i1 %cmp17.not.i.i, label %if.then10.i14.fb_rotate_logo_cw.exit.i_crit_edge, label %for.cond1.preheader.lr.ph.i.i

if.then10.i14.fb_rotate_logo_cw.exit.i_crit_edge: ; preds = %if.then10.i14
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_rotate_logo_cw.exit.i

for.cond1.preheader.lr.ph.i.i:                    ; preds = %if.then10.i14
  %246 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %data3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %cmp214.not.i.i = icmp eq i32 %243, 0
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.inc5.i.i.for.cond1.preheader.i.i_crit_edge, %for.cond1.preheader.lr.ph.i.i
  %i.019.i.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i.i ], [ %inc6.i.i, %for.inc5.i.i.for.cond1.preheader.i.i_crit_edge ]
  %in.addr.018.i.i = phi ptr [ %247, %for.cond1.preheader.lr.ph.i.i ], [ %in.addr.1.lcssa.i.i, %for.inc5.i.i.for.cond1.preheader.i.i_crit_edge ]
  br i1 %cmp214.not.i.i, label %for.cond1.preheader.i.i.for.inc5.i.i_crit_edge, label %for.body3.lr.ph.i.i

for.cond1.preheader.i.i.for.inc5.i.i_crit_edge:   ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc5.i.i

for.body3.lr.ph.i.i:                              ; preds = %for.cond1.preheader.i.i
  %248 = xor i32 %i.019.i.i, -1
  %add.i.i15 = add i32 %245, %248
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.body3.i.i.for.body3.i.i_crit_edge, %for.body3.lr.ph.i.i
  %j.016.i.i = phi i32 [ 0, %for.body3.lr.ph.i.i ], [ %inc.i.i17, %for.body3.i.i.for.body3.i.i_crit_edge ]
  %in.addr.115.i.i = phi ptr [ %in.addr.018.i.i, %for.body3.lr.ph.i.i ], [ %incdec.ptr.i93.i, %for.body3.i.i.for.body3.i.i_crit_edge ]
  %incdec.ptr.i93.i = getelementptr i8, ptr %in.addr.115.i.i, i32 1
  %249 = ptrtoint ptr %in.addr.115.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %in.addr.115.i.i, align 1
  %mul.i94.i = mul i32 %j.016.i.i, %245
  %sub4.i.i = add i32 %add.i.i15, %mul.i94.i
  %arrayidx.i.i16 = getelementptr i8, ptr %call8.i43.i, i32 %sub4.i.i
  %251 = ptrtoint ptr %arrayidx.i.i16 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %250, ptr %arrayidx.i.i16, align 1
  %inc.i.i17 = add nuw i32 %j.016.i.i, 1
  %exitcond.not.i.i18 = icmp eq i32 %inc.i.i17, %243
  br i1 %exitcond.not.i.i18, label %for.body3.i.i.for.inc5.i.i_crit_edge, label %for.body3.i.i.for.body3.i.i_crit_edge

for.body3.i.i.for.body3.i.i_crit_edge:            ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body3.i.i

for.body3.i.i.for.inc5.i.i_crit_edge:             ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc5.i.i

for.inc5.i.i:                                     ; preds = %for.body3.i.i.for.inc5.i.i_crit_edge, %for.cond1.preheader.i.i.for.inc5.i.i_crit_edge
  %in.addr.1.lcssa.i.i = phi ptr [ %in.addr.018.i.i, %for.cond1.preheader.i.i.for.inc5.i.i_crit_edge ], [ %incdec.ptr.i93.i, %for.body3.i.i.for.inc5.i.i_crit_edge ]
  %inc6.i.i = add nuw i32 %i.019.i.i, 1
  %exitcond21.not.i.i = icmp eq i32 %inc6.i.i, %245
  br i1 %exitcond21.not.i.i, label %for.inc5.i.i.fb_rotate_logo_cw.exit.i_crit_edge, label %for.inc5.i.i.for.cond1.preheader.i.i_crit_edge

for.inc5.i.i.for.cond1.preheader.i.i_crit_edge:   ; preds = %for.inc5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond1.preheader.i.i

for.inc5.i.i.fb_rotate_logo_cw.exit.i_crit_edge:  ; preds = %for.inc5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_rotate_logo_cw.exit.i

fb_rotate_logo_cw.exit.i:                         ; preds = %for.inc5.i.i.fb_rotate_logo_cw.exit.i_crit_edge, %if.then10.i14.fb_rotate_logo_cw.exit.i_crit_edge
  %252 = ptrtoint ptr %width62.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %width62.i, align 4
  %254 = ptrtoint ptr %height64.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %height64.i, align 4
  store i32 %255, ptr %width62.i, align 4
  store i32 %253, ptr %height64.i, align 4
  %256 = ptrtoint ptr %dy59.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %dy59.i, align 4
  %258 = ptrtoint ptr %image.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %image.i, align 4
  store i32 %259, ptr %dy59.i, align 4
  %var21.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %260 = ptrtoint ptr %var21.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %var21.i, align 4
  %262 = add i32 %257, %255
  %sub25.i = sub i32 %261, %262
  store i32 %sub25.i, ptr %image.i, align 4
  br label %fb_rotate_logo.exit

if.then29.i:                                      ; preds = %if.then71.i
  %263 = ptrtoint ptr %width62.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %width62.i, align 4
  %265 = ptrtoint ptr %height64.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %height64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %cmp17.not.i95.i = icmp eq i32 %266, 0
  br i1 %cmp17.not.i95.i, label %if.then29.i.fb_rotate_logo_ccw.exit.i_crit_edge, label %for.cond1.preheader.lr.ph.i97.i

if.then29.i.fb_rotate_logo_ccw.exit.i_crit_edge:  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_rotate_logo_ccw.exit.i

for.cond1.preheader.lr.ph.i97.i:                  ; preds = %if.then29.i
  %267 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %data3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %cmp214.not.i96.i = icmp eq i32 %264, 0
  br label %for.cond1.preheader.i100.i

for.cond1.preheader.i100.i:                       ; preds = %for.inc5.i114.i.for.cond1.preheader.i100.i_crit_edge, %for.cond1.preheader.lr.ph.i97.i
  %i.019.i98.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i97.i ], [ %inc6.i112.i, %for.inc5.i114.i.for.cond1.preheader.i100.i_crit_edge ]
  %in.addr.018.i99.i = phi ptr [ %268, %for.cond1.preheader.lr.ph.i97.i ], [ %in.addr.1.lcssa.i111.i, %for.inc5.i114.i.for.cond1.preheader.i100.i_crit_edge ]
  br i1 %cmp214.not.i96.i, label %for.cond1.preheader.i100.i.for.inc5.i114.i_crit_edge, label %for.cond1.preheader.i100.i.for.body3.i110.i_crit_edge

for.cond1.preheader.i100.i.for.body3.i110.i_crit_edge: ; preds = %for.cond1.preheader.i100.i
  br label %for.body3.i110.i

for.cond1.preheader.i100.i.for.inc5.i114.i_crit_edge: ; preds = %for.cond1.preheader.i100.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc5.i114.i

for.body3.i110.i:                                 ; preds = %for.body3.i110.i.for.body3.i110.i_crit_edge, %for.cond1.preheader.i100.i.for.body3.i110.i_crit_edge
  %j.016.i101.i = phi i32 [ %inc.i108.i, %for.body3.i110.i.for.body3.i110.i_crit_edge ], [ 0, %for.cond1.preheader.i100.i.for.body3.i110.i_crit_edge ]
  %in.addr.115.i102.i = phi ptr [ %incdec.ptr.i103.i, %for.body3.i110.i.for.body3.i110.i_crit_edge ], [ %in.addr.018.i99.i, %for.cond1.preheader.i100.i.for.body3.i110.i_crit_edge ]
  %incdec.ptr.i103.i = getelementptr i8, ptr %in.addr.115.i102.i, i32 1
  %269 = ptrtoint ptr %in.addr.115.i102.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %in.addr.115.i102.i, align 1
  %271 = xor i32 %j.016.i101.i, -1
  %sub4.i104.i = add i32 %264, %271
  %mul.i105.i = mul i32 %sub4.i104.i, %266
  %add.i106.i = add i32 %mul.i105.i, %i.019.i98.i
  %arrayidx.i107.i = getelementptr i8, ptr %call8.i43.i, i32 %add.i106.i
  %272 = ptrtoint ptr %arrayidx.i107.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %270, ptr %arrayidx.i107.i, align 1
  %inc.i108.i = add nuw i32 %j.016.i101.i, 1
  %exitcond.not.i109.i = icmp eq i32 %inc.i108.i, %264
  br i1 %exitcond.not.i109.i, label %for.body3.i110.i.for.inc5.i114.i_crit_edge, label %for.body3.i110.i.for.body3.i110.i_crit_edge

for.body3.i110.i.for.body3.i110.i_crit_edge:      ; preds = %for.body3.i110.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body3.i110.i

for.body3.i110.i.for.inc5.i114.i_crit_edge:       ; preds = %for.body3.i110.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc5.i114.i

for.inc5.i114.i:                                  ; preds = %for.body3.i110.i.for.inc5.i114.i_crit_edge, %for.cond1.preheader.i100.i.for.inc5.i114.i_crit_edge
  %in.addr.1.lcssa.i111.i = phi ptr [ %in.addr.018.i99.i, %for.cond1.preheader.i100.i.for.inc5.i114.i_crit_edge ], [ %incdec.ptr.i103.i, %for.body3.i110.i.for.inc5.i114.i_crit_edge ]
  %inc6.i112.i = add nuw i32 %i.019.i98.i, 1
  %exitcond21.not.i113.i = icmp eq i32 %inc6.i112.i, %266
  br i1 %exitcond21.not.i113.i, label %for.inc5.i114.i.fb_rotate_logo_ccw.exit.i_crit_edge, label %for.inc5.i114.i.for.cond1.preheader.i100.i_crit_edge

for.inc5.i114.i.for.cond1.preheader.i100.i_crit_edge: ; preds = %for.inc5.i114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond1.preheader.i100.i

for.inc5.i114.i.fb_rotate_logo_ccw.exit.i_crit_edge: ; preds = %for.inc5.i114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_rotate_logo_ccw.exit.i

fb_rotate_logo_ccw.exit.i:                        ; preds = %for.inc5.i114.i.fb_rotate_logo_ccw.exit.i_crit_edge, %if.then29.i.fb_rotate_logo_ccw.exit.i_crit_edge
  %273 = ptrtoint ptr %width62.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %width62.i, align 4
  %275 = ptrtoint ptr %height64.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %height64.i, align 4
  store i32 %276, ptr %width62.i, align 4
  store i32 %274, ptr %height64.i, align 4
  %277 = ptrtoint ptr %image.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %image.i, align 4
  %279 = ptrtoint ptr %dy59.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %dy59.i, align 4
  store i32 %280, ptr %image.i, align 4
  %yres41.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %281 = ptrtoint ptr %yres41.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %yres41.i, align 4
  %283 = add i32 %278, %274
  %sub44.i = sub i32 %282, %283
  store i32 %sub44.i, ptr %dy59.i, align 4
  br label %fb_rotate_logo.exit

fb_rotate_logo.exit:                              ; preds = %fb_rotate_logo_ccw.exit.i, %fb_rotate_logo_cw.exit.i, %fb_rotate_logo_ud.exit.i, %if.then71.i.fb_rotate_logo.exit_crit_edge
  %284 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %call8.i43.i, ptr %data3.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %fb_rotate_logo.exit, %if.end7.i44.i.if.end73.i_crit_edge, %if.then66.i.if.end73.i_crit_edge, %if.end60.i.if.end73.i_crit_edge
  %logo_rotate.0.i = phi ptr [ %call8.i43.i, %fb_rotate_logo.exit ], [ null, %if.end7.i44.i.if.end73.i_crit_edge ], [ null, %if.end60.i.if.end73.i_crit_edge ], [ null, %if.then66.i.if.end73.i_crit_edge ]
  %285 = ptrtoint ptr %width62.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %width62.i, align 4
  %var.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %287 = ptrtoint ptr %var.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %var.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %286, i32 %288)
  %cmp.i47.i = icmp ugt i32 %286, %288
  br i1 %cmp.i47.i, label %if.end73.i.fb_do_show_logo.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end73.i.fb_do_show_logo.exit.i_crit_edge:      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end73.i
  %289 = ptrtoint ptr %height64.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %height64.i, align 4
  %yres.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %291 = ptrtoint ptr %yres.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %yres.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %290, i32 %292)
  %cmp2.i.i = icmp ugt i32 %290, %292
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i.fb_do_show_logo.exit.i_crit_edge, label %if.end.i48.i

lor.lhs.false.i.i.fb_do_show_logo.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

if.end.i48.i:                                     ; preds = %lor.lhs.false.i.i
  %293 = zext i32 %rotate to i64
  call void @__sanitizer_cov_trace_switch(i64 %293, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %rotate, label %if.end.i48.i.fb_do_show_logo.exit.i_crit_edge [
    i32 0, label %for.cond.preheader.i.i
    i32 2, label %if.then15.i.i
    i32 1, label %for.cond36.preheader.i.i
    i32 3, label %if.then57.i.i
  ]

if.end.i48.i.fb_do_show_logo.exit.i_crit_edge:    ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

for.cond36.preheader.i.i:                         ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.i)
  %cmp37131.not.i.i = icmp eq i32 %n.addr.1.i, 0
  br i1 %cmp37131.not.i.i, label %for.cond36.preheader.i.i.fb_do_show_logo.exit.i_crit_edge, label %for.cond36.preheader.i.i.land.rhs38.i.i_crit_edge

for.cond36.preheader.i.i.land.rhs38.i.i_crit_edge: ; preds = %for.cond36.preheader.i.i
  br label %land.rhs38.i.i

for.cond36.preheader.i.i.fb_do_show_logo.exit.i_crit_edge: ; preds = %for.cond36.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.i)
  %cmp5135.not.i.i = icmp eq i32 %n.addr.1.i, 0
  br i1 %cmp5135.not.i.i, label %for.cond.preheader.i.i.fb_do_show_logo.exit.i_crit_edge, label %for.cond.preheader.i.i.land.rhs.i.i_crit_edge

for.cond.preheader.i.i.land.rhs.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %land.rhs.i.i

for.cond.preheader.i.i.fb_do_show_logo.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

land.rhs.i.i:                                     ; preds = %for.body.i51.i.land.rhs.i.i_crit_edge, %for.cond.preheader.i.i.land.rhs.i.i_crit_edge
  %x.0136.i.i = phi i32 [ %inc.i50.i, %for.body.i51.i.land.rhs.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.land.rhs.i.i_crit_edge ]
  %294 = ptrtoint ptr %image.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %image.i, align 4
  %296 = ptrtoint ptr %width62.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %width62.i, align 4
  %add.i49.i = add i32 %297, %295
  %298 = ptrtoint ptr %var.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %var.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i49.i, i32 %299)
  %cmp9.not.i.i = icmp ugt i32 %add.i49.i, %299
  br i1 %cmp9.not.i.i, label %land.rhs.i.i.fb_do_show_logo.exit.i_crit_edge, label %for.body.i51.i

land.rhs.i.i.fb_do_show_logo.exit.i_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

for.body.i51.i:                                   ; preds = %land.rhs.i.i
  %300 = ptrtoint ptr %fbops.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %fbops.i, align 4
  %fb_imageblit.i.i = getelementptr inbounds %struct.fb_ops, ptr %301, i32 0, i32 13
  %302 = ptrtoint ptr %fb_imageblit.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %fb_imageblit.i.i, align 4
  call void %303(ptr noundef %info, ptr noundef nonnull %image.i) #14
  %304 = ptrtoint ptr %width62.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %width62.i, align 4
  %add11.i.i = add i32 %305, 8
  %306 = ptrtoint ptr %image.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %image.i, align 4
  %add13.i.i = add i32 %add11.i.i, %307
  store i32 %add13.i.i, ptr %image.i, align 4
  %inc.i50.i = add nuw i32 %x.0136.i.i, 1
  %exitcond142.not.i.i = icmp eq i32 %inc.i50.i, %n.addr.1.i
  br i1 %exitcond142.not.i.i, label %for.body.i51.i.fb_do_show_logo.exit.i_crit_edge, label %for.body.i51.i.land.rhs.i.i_crit_edge

for.body.i51.i.land.rhs.i.i_crit_edge:            ; preds = %for.body.i51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i

for.body.i51.i.fb_do_show_logo.exit.i_crit_edge:  ; preds = %for.body.i51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

if.then15.i.i:                                    ; preds = %if.end.i48.i
  %308 = ptrtoint ptr %image.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %image.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.i)
  %cmp19133.not.i.i = icmp eq i32 %n.addr.1.i, 0
  br i1 %cmp19133.not.i.i, label %if.then15.i.i.fb_do_show_logo.exit.i_crit_edge, label %if.then15.i.i.land.rhs20.i.i_crit_edge

if.then15.i.i.land.rhs20.i.i_crit_edge:           ; preds = %if.then15.i.i
  br label %land.rhs20.i.i

if.then15.i.i.fb_do_show_logo.exit.i_crit_edge:   ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

land.rhs20.i.i:                                   ; preds = %for.body24.i.i.land.rhs20.i.i_crit_edge, %if.then15.i.i.land.rhs20.i.i_crit_edge
  %x.1134.i.i = phi i32 [ %inc31.i.i, %for.body24.i.i.land.rhs20.i.i_crit_edge ], [ 0, %if.then15.i.i.land.rhs20.i.i_crit_edge ]
  %310 = ptrtoint ptr %image.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %image.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %311, i32 %309)
  %cmp22.not.i.i = icmp ugt i32 %311, %309
  br i1 %cmp22.not.i.i, label %land.rhs20.i.i.fb_do_show_logo.exit.i_crit_edge, label %for.body24.i.i

land.rhs20.i.i.fb_do_show_logo.exit.i_crit_edge:  ; preds = %land.rhs20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

for.body24.i.i:                                   ; preds = %land.rhs20.i.i
  %312 = ptrtoint ptr %fbops.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %fbops.i, align 4
  %fb_imageblit26.i.i = getelementptr inbounds %struct.fb_ops, ptr %313, i32 0, i32 13
  %314 = ptrtoint ptr %fb_imageblit26.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %fb_imageblit26.i.i, align 4
  call void %315(ptr noundef %info, ptr noundef nonnull %image.i) #14
  %316 = ptrtoint ptr %width62.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %width62.i, align 4
  %318 = ptrtoint ptr %image.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %image.i, align 4
  %add28.neg.i.i = sub i32 -8, %317
  %sub.i52.i = add i32 %add28.neg.i.i, %319
  store i32 %sub.i52.i, ptr %image.i, align 4
  %inc31.i.i = add nuw i32 %x.1134.i.i, 1
  %exitcond141.not.i.i = icmp eq i32 %inc31.i.i, %n.addr.1.i
  br i1 %exitcond141.not.i.i, label %for.body24.i.i.fb_do_show_logo.exit.i_crit_edge, label %for.body24.i.i.land.rhs20.i.i_crit_edge

for.body24.i.i.land.rhs20.i.i_crit_edge:          ; preds = %for.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs20.i.i

for.body24.i.i.fb_do_show_logo.exit.i_crit_edge:  ; preds = %for.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

land.rhs38.i.i:                                   ; preds = %for.body45.i.i.land.rhs38.i.i_crit_edge, %for.cond36.preheader.i.i.land.rhs38.i.i_crit_edge
  %x.2132.i.i = phi i32 [ %inc53.i.i, %for.body45.i.i.land.rhs38.i.i_crit_edge ], [ 0, %for.cond36.preheader.i.i.land.rhs38.i.i_crit_edge ]
  %320 = ptrtoint ptr %dy59.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %dy59.i, align 4
  %322 = ptrtoint ptr %height64.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %height64.i, align 4
  %add40.i.i = add i32 %323, %321
  %324 = ptrtoint ptr %yres.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %yres.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add40.i.i, i32 %325)
  %cmp43.not.i.i = icmp ugt i32 %add40.i.i, %325
  br i1 %cmp43.not.i.i, label %land.rhs38.i.i.fb_do_show_logo.exit.i_crit_edge, label %for.body45.i.i

land.rhs38.i.i.fb_do_show_logo.exit.i_crit_edge:  ; preds = %land.rhs38.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

for.body45.i.i:                                   ; preds = %land.rhs38.i.i
  %326 = ptrtoint ptr %fbops.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %fbops.i, align 4
  %fb_imageblit47.i.i = getelementptr inbounds %struct.fb_ops, ptr %327, i32 0, i32 13
  %328 = ptrtoint ptr %fb_imageblit47.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %fb_imageblit47.i.i, align 4
  call void %329(ptr noundef %info, ptr noundef nonnull %image.i) #14
  %330 = ptrtoint ptr %height64.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %height64.i, align 4
  %add49.i.i = add i32 %331, 8
  %332 = ptrtoint ptr %dy59.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %dy59.i, align 4
  %add51.i.i = add i32 %add49.i.i, %333
  store i32 %add51.i.i, ptr %dy59.i, align 4
  %inc53.i.i = add nuw i32 %x.2132.i.i, 1
  %exitcond140.not.i.i = icmp eq i32 %inc53.i.i, %n.addr.1.i
  br i1 %exitcond140.not.i.i, label %for.body45.i.i.fb_do_show_logo.exit.i_crit_edge, label %for.body45.i.i.land.rhs38.i.i_crit_edge

for.body45.i.i.land.rhs38.i.i_crit_edge:          ; preds = %for.body45.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs38.i.i

for.body45.i.i.fb_do_show_logo.exit.i_crit_edge:  ; preds = %for.body45.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

if.then57.i.i:                                    ; preds = %if.end.i48.i
  %334 = ptrtoint ptr %dy59.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %dy59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.1.i)
  %cmp61129.not.i.i = icmp eq i32 %n.addr.1.i, 0
  br i1 %cmp61129.not.i.i, label %if.then57.i.i.fb_do_show_logo.exit.i_crit_edge, label %if.then57.i.i.land.rhs62.i.i_crit_edge

if.then57.i.i.land.rhs62.i.i_crit_edge:           ; preds = %if.then57.i.i
  br label %land.rhs62.i.i

if.then57.i.i.fb_do_show_logo.exit.i_crit_edge:   ; preds = %if.then57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

land.rhs62.i.i:                                   ; preds = %for.body66.i.i.land.rhs62.i.i_crit_edge, %if.then57.i.i.land.rhs62.i.i_crit_edge
  %x.3130.i.i = phi i32 [ %inc74.i.i, %for.body66.i.i.land.rhs62.i.i_crit_edge ], [ 0, %if.then57.i.i.land.rhs62.i.i_crit_edge ]
  %336 = ptrtoint ptr %dy59.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %dy59.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %337, i32 %335)
  %cmp64.not.i.i = icmp ugt i32 %337, %335
  br i1 %cmp64.not.i.i, label %land.rhs62.i.i.fb_do_show_logo.exit.i_crit_edge, label %for.body66.i.i

land.rhs62.i.i.fb_do_show_logo.exit.i_crit_edge:  ; preds = %land.rhs62.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

for.body66.i.i:                                   ; preds = %land.rhs62.i.i
  %338 = ptrtoint ptr %fbops.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %fbops.i, align 4
  %fb_imageblit68.i.i = getelementptr inbounds %struct.fb_ops, ptr %339, i32 0, i32 13
  %340 = ptrtoint ptr %fb_imageblit68.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %fb_imageblit68.i.i, align 4
  call void %341(ptr noundef %info, ptr noundef nonnull %image.i) #14
  %342 = ptrtoint ptr %height64.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %height64.i, align 4
  %344 = ptrtoint ptr %dy59.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %dy59.i, align 4
  %add70.neg.i.i = sub i32 -8, %343
  %sub72.i.i = add i32 %add70.neg.i.i, %345
  store i32 %sub72.i.i, ptr %dy59.i, align 4
  %inc74.i.i = add nuw i32 %x.3130.i.i, 1
  %exitcond.not.i53.i = icmp eq i32 %inc74.i.i, %n.addr.1.i
  br i1 %exitcond.not.i53.i, label %for.body66.i.i.fb_do_show_logo.exit.i_crit_edge, label %for.body66.i.i.land.rhs62.i.i_crit_edge

for.body66.i.i.land.rhs62.i.i_crit_edge:          ; preds = %for.body66.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs62.i.i

for.body66.i.i.fb_do_show_logo.exit.i_crit_edge:  ; preds = %for.body66.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_do_show_logo.exit.i

fb_do_show_logo.exit.i:                           ; preds = %for.body66.i.i.fb_do_show_logo.exit.i_crit_edge, %land.rhs62.i.i.fb_do_show_logo.exit.i_crit_edge, %if.then57.i.i.fb_do_show_logo.exit.i_crit_edge, %for.body45.i.i.fb_do_show_logo.exit.i_crit_edge, %land.rhs38.i.i.fb_do_show_logo.exit.i_crit_edge, %for.body24.i.i.fb_do_show_logo.exit.i_crit_edge, %land.rhs20.i.i.fb_do_show_logo.exit.i_crit_edge, %if.then15.i.i.fb_do_show_logo.exit.i_crit_edge, %for.body.i51.i.fb_do_show_logo.exit.i_crit_edge, %land.rhs.i.i.fb_do_show_logo.exit.i_crit_edge, %for.cond.preheader.i.i.fb_do_show_logo.exit.i_crit_edge, %for.cond36.preheader.i.i.fb_do_show_logo.exit.i_crit_edge, %if.end.i48.i.fb_do_show_logo.exit.i_crit_edge, %lor.lhs.false.i.i.fb_do_show_logo.exit.i_crit_edge, %if.end73.i.fb_do_show_logo.exit.i_crit_edge
  call void @kfree(ptr noundef %palette.0.i) #14
  %cmp74.not.i = icmp eq ptr %saved_pseudo_palette.0.i, null
  br i1 %cmp74.not.i, label %fb_do_show_logo.exit.i.if.end77.i_crit_edge, label %if.then75.i

fb_do_show_logo.exit.i.if.end77.i_crit_edge:      ; preds = %fb_do_show_logo.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end77.i

if.then75.i:                                      ; preds = %fb_do_show_logo.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %pseudo_palette76.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %346 = ptrtoint ptr %pseudo_palette76.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %saved_pseudo_palette.0.i, ptr %pseudo_palette76.i, align 4
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then75.i, %fb_do_show_logo.exit.i.if.end77.i_crit_edge
  call void @kfree(ptr noundef %logo_new.0.i) #14
  call void @kfree(ptr noundef %logo_rotate.0.i) #14
  %347 = ptrtoint ptr %dy59.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %dy59.i, align 4
  %349 = ptrtoint ptr %height63.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %height63.i, align 4
  %add80.i = add i32 %350, %348
  br label %fb_show_logo_line.exit

fb_show_logo_line.exit:                           ; preds = %if.end77.i, %if.then25.i, %if.then23.i.fb_show_logo_line.exit_crit_edge, %if.then10.i.fb_show_logo_line.exit_crit_edge, %lor.lhs.false2.i.fb_show_logo_line.exit_crit_edge, %lor.lhs.false.i.fb_show_logo_line.exit_crit_edge, %cond.end.fb_show_logo_line.exit_crit_edge
  %retval.0.i = phi i32 [ %add80.i, %if.end77.i ], [ 0, %lor.lhs.false2.i.fb_show_logo_line.exit_crit_edge ], [ 0, %lor.lhs.false.i.fb_show_logo_line.exit_crit_edge ], [ 0, %cond.end.fb_show_logo_line.exit_crit_edge ], [ 0, %if.then10.i.fb_show_logo_line.exit_crit_edge ], [ 0, %if.then25.i ], [ 0, %if.then23.i.fb_show_logo_line.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %image.i) #14
  br label %cleanup

cleanup:                                          ; preds = %fb_show_logo_line.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %fb_show_logo_line.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_pan_display(ptr noundef %info, ptr noundef %var) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %var2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %yres3 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %yres3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %yres3, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %2 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then:                                          ; preds = %entry
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %4 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmode, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else10, label %if.then4

if.then4:                                         ; preds = %if.then
  %ywrapstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 8
  %6 = ptrtoint ptr %ywrapstep to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ywrapstep, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool5.not = icmp eq i16 %7, 0
  br i1 %tobool5.not, label %if.then4.if.end21_crit_edge, label %lor.lhs.false

if.then4.if.end21_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

lor.lhs.false:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i16 %7 to i32
  %rem = urem i32 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool8.not = icmp eq i32 %rem, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 %1
  %spec.select107 = select i1 %tobool8.not, i32 0, i32 -22
  br label %if.end21

if.else10:                                        ; preds = %if.then
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 7
  %8 = ptrtoint ptr %ypanstep to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ypanstep, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool11.not = icmp eq i16 %9, 0
  br i1 %tobool11.not, label %if.else10.if.then18_crit_edge, label %lor.lhs.false12

if.else10.if.then18_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

lor.lhs.false12:                                  ; preds = %if.else10
  %conv15 = zext i16 %9 to i32
  %rem16 = urem i32 %3, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem16)
  %tobool17.not = icmp eq i32 %rem16, 0
  br i1 %tobool17.not, label %lor.lhs.false12.if.end21_crit_edge, label %lor.lhs.false12.if.then18_crit_edge

lor.lhs.false12.if.then18_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then18

lor.lhs.false12.if.end21_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then18:                                        ; preds = %lor.lhs.false12.if.then18_crit_edge, %if.else10.if.then18_crit_edge
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %lor.lhs.false12.if.end21_crit_edge, %lor.lhs.false, %if.then4.if.end21_crit_edge, %entry.if.end21_crit_edge
  %yres.0 = phi i32 [ %1, %if.then18 ], [ %1, %lor.lhs.false12.if.end21_crit_edge ], [ %1, %entry.if.end21_crit_edge ], [ %1, %if.then4.if.end21_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %err.0 = phi i32 [ -22, %if.then18 ], [ 0, %lor.lhs.false12.if.end21_crit_edge ], [ 0, %entry.if.end21_crit_edge ], [ -22, %if.then4.if.end21_crit_edge ], [ %spec.select107, %lor.lhs.false ]
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %10 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp22.not = icmp eq i32 %11, 0
  br i1 %cmp22.not, label %if.end32, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end21
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %12 = ptrtoint ptr %xpanstep to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %xpanstep, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool24.not = icmp eq i16 %13, 0
  br i1 %tobool24.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false25

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false25:                                  ; preds = %land.lhs.true
  %conv28 = zext i16 %13 to i32
  %rem29 = urem i32 %11, %conv28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem29)
  %tobool30.not = icmp eq i32 %rem29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool33.not = icmp eq i32 %err.0, 0
  %or.cond = select i1 %tobool30.not, i1 %tobool33.not, i1 false
  br i1 %or.cond, label %lor.lhs.false25.lor.lhs.false34_crit_edge, label %lor.lhs.false25.cleanup_crit_edge

lor.lhs.false25.cleanup_crit_edge:                ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false25.lor.lhs.false34_crit_edge:        ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false34

if.end32:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool33.not.old = icmp eq i32 %err.0, 0
  br i1 %tobool33.not.old, label %if.end32.lor.lhs.false34_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end32.lor.lhs.false34_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end32.lor.lhs.false34_crit_edge, %lor.lhs.false25.lor.lhs.false34_crit_edge
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %14 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fbops, align 4
  %fb_pan_display = getelementptr inbounds %struct.fb_ops, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %fb_pan_display to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb_pan_display, align 4
  %tobool35.not = icmp eq ptr %17, null
  br i1 %tobool35.not, label %lor.lhs.false34.cleanup_crit_edge, label %lor.lhs.false36

lor.lhs.false34.cleanup_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false36:                                  ; preds = %lor.lhs.false34
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %18 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres_virtual, align 4
  %sub = sub i32 %19, %yres.0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub)
  %cmp39 = icmp ugt i32 %3, %sub
  br i1 %cmp39, label %lor.lhs.false36.cleanup_crit_edge, label %lor.lhs.false41

lor.lhs.false36.cleanup_crit_edge:                ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false41:                                  ; preds = %lor.lhs.false36
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xres_virtual, align 4
  %22 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %var2, align 4
  %sub45 = sub i32 %21, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub45)
  %cmp46 = icmp ugt i32 %11, %sub45
  br i1 %cmp46, label %lor.lhs.false41.cleanup_crit_edge, label %if.end49

lor.lhs.false41.cleanup_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end49:                                         ; preds = %lor.lhs.false41
  %call = tail call i32 %17(ptr noundef %var, ptr noundef %info) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool52.not = icmp eq i32 %call, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xoffset, align 4
  %xoffset57 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %26 = ptrtoint ptr %xoffset57 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %xoffset57, align 4
  %27 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %yoffset, align 4
  %yoffset60 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %29 = ptrtoint ptr %yoffset60 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %yoffset60, align 4
  %vmode61 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %30 = ptrtoint ptr %vmode61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vmode61, align 4
  %and62 = and i32 %31, 256
  %vmode69 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %32 = ptrtoint ptr %vmode69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vmode69, align 4
  %and70 = and i32 %33, -257
  %or.sink = or i32 %and70, %and62
  store i32 %or.sink, ptr %vmode69, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end49.cleanup_crit_edge, %lor.lhs.false41.cleanup_crit_edge, %lor.lhs.false36.cleanup_crit_edge, %lor.lhs.false34.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %lor.lhs.false25.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false41.cleanup_crit_edge ], [ -22, %lor.lhs.false36.cleanup_crit_edge ], [ -22, %lor.lhs.false34.cleanup_crit_edge ], [ -22, %if.end32.cleanup_crit_edge ], [ %call, %if.end49.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false25.cleanup_crit_edge ], [ 0, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_set_var(ptr noundef %info, ptr noundef %var) #3 align 64 {
entry:
  %old_var = alloca %struct.fb_var_screeninfo, align 4
  %mode = alloca %struct.fb_videomode, align 4
  %event = alloca %struct.fb_event, align 4
  %mode1 = alloca %struct.fb_videomode, align 4
  %mode2 = alloca %struct.fb_videomode, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %old_var)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mode) #14
  %0 = call ptr @memset(ptr %mode, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #14
  %1 = getelementptr inbounds %struct.fb_event, ptr %event, i32 0, i32 1
  %activate1 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %2 = ptrtoint ptr %activate1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %activate1, align 4
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mode1) #14
  %4 = call ptr @memset(ptr %mode1, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mode2) #14
  %5 = call ptr @memset(ptr %mode2, i32 255, i32 56)
  call void @fb_var_to_videomode(ptr noundef nonnull %mode1, ptr noundef %var) #14
  %var2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  call void @fb_var_to_videomode(ptr noundef nonnull %mode2, ptr noundef %var2) #14
  %call = call i32 @fb_mode_is_equal(ptr noundef nonnull %mode1, ptr noundef nonnull %mode2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end8.thread_crit_edge

if.then.if.end8.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.thread

if.then4:                                         ; preds = %if.then
  %call5 = call i32 @fbcon_mode_deleted(ptr noundef %info, ptr noundef nonnull %mode1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %6, label %if.then4.if.end8.thread_crit_edge

if.then4.if.end8.thread_crit_edge:                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.thread

6:                                                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %modelist = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  call void @fb_delete_videomode(ptr noundef nonnull %mode1, ptr noundef %modelist) #14
  br label %if.end8.thread

if.end8.thread:                                   ; preds = %6, %if.then4.if.end8.thread_crit_edge, %if.then.if.end8.thread_crit_edge
  %7 = phi i32 [ 0, %6 ], [ -22, %if.then.if.end8.thread_crit_edge ], [ -22, %if.then4.if.end8.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mode2) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mode1) #14
  br label %cleanup

if.end10:                                         ; preds = %entry
  %and12 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end10
  %var14 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(160) %var14, ptr noundef dereferenceable(160) %var, i32 160) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool16.not = icmp eq i32 %bcmp, 0
  br i1 %tobool16.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %capabilities = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 13
  %8 = ptrtoint ptr %capabilities to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %capabilities, align 4
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool21.not = icmp eq i16 %10, 0
  br i1 %tobool21.not, label %if.end18.if.end66_crit_edge, label %land.lhs.true22

if.end18.if.end66_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.lhs.true22:                                  ; preds = %if.end18
  %grayscale = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 7
  %11 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp ugt i32 %12, 1
  br i1 %cmp, label %if.then24, label %land.lhs.true22.if.end66_crit_edge

land.lhs.true22.if.end66_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then24:                                        ; preds = %land.lhs.true22
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %13 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %red, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool25.not = icmp eq i32 %14, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then24
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %15 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %green, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool27.not = icmp eq i32 %16, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %17 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %lor.lhs.false28.cleanup_crit_edge

lor.lhs.false28.cleanup_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %19 = ptrtoint ptr %transp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %transp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool33.not = icmp eq i32 %20, 0
  br i1 %tobool33.not, label %lor.lhs.false34, label %lor.lhs.false31.cleanup_crit_edge

lor.lhs.false31.cleanup_crit_edge:                ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false34:                                  ; preds = %lor.lhs.false31
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool36.not = icmp eq i32 %22, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %lor.lhs.false34.cleanup_crit_edge

lor.lhs.false34.cleanup_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false37:                                  ; preds = %lor.lhs.false34
  %length39 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %length39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool40.not = icmp eq i32 %24, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %lor.lhs.false37.cleanup_crit_edge

lor.lhs.false37.cleanup_crit_edge:                ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false41:                                  ; preds = %lor.lhs.false37
  %length43 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %length43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool44.not = icmp eq i32 %26, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %lor.lhs.false41.cleanup_crit_edge

lor.lhs.false41.cleanup_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %length47 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %length47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool48.not = icmp eq i32 %28, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %lor.lhs.false45.cleanup_crit_edge

lor.lhs.false45.cleanup_crit_edge:                ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false49:                                  ; preds = %lor.lhs.false45
  %msb_right = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 2
  %29 = ptrtoint ptr %msb_right to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msb_right, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool51.not = icmp eq i32 %30, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %lor.lhs.false49.cleanup_crit_edge

lor.lhs.false49.cleanup_crit_edge:                ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %msb_right54 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 2
  %31 = ptrtoint ptr %msb_right54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msb_right54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool55.not = icmp eq i32 %32, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %lor.lhs.false52.cleanup_crit_edge

lor.lhs.false52.cleanup_crit_edge:                ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false56:                                  ; preds = %lor.lhs.false52
  %msb_right58 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 2
  %33 = ptrtoint ptr %msb_right58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msb_right58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool59.not = icmp eq i32 %34, 0
  br i1 %tobool59.not, label %lor.lhs.false60, label %lor.lhs.false56.cleanup_crit_edge

lor.lhs.false56.cleanup_crit_edge:                ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %msb_right62 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 2
  %35 = ptrtoint ptr %msb_right62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msb_right62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool63.not = icmp eq i32 %36, 0
  br i1 %tobool63.not, label %lor.lhs.false60.if.end66_crit_edge, label %lor.lhs.false60.cleanup_crit_edge

lor.lhs.false60.cleanup_crit_edge:                ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false60.if.end66_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.end66:                                         ; preds = %lor.lhs.false60.if.end66_crit_edge, %land.lhs.true22.if.end66_crit_edge, %if.end18.if.end66_crit_edge
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %37 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fbops, align 4
  %fb_check_var = getelementptr inbounds %struct.fb_ops, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %fb_check_var to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fb_check_var, align 4
  %tobool67.not = icmp eq ptr %40, null
  br i1 %tobool67.not, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %var69 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %41 = call ptr @memcpy(ptr %var, ptr %var69, i32 160)
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  %42 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %43)
  %cmp71 = icmp ult i32 %43, 8
  br i1 %cmp71, label %if.end70.cleanup_crit_edge, label %lor.lhs.false73

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false73:                                  ; preds = %if.end70
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %44 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %45)
  %cmp74 = icmp ult i32 %45, 8
  br i1 %cmp74, label %lor.lhs.false73.cleanup_crit_edge, label %if.end77

lor.lhs.false73.cleanup_crit_edge:                ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end77:                                         ; preds = %lor.lhs.false73
  %46 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %43, i32 %45)
  %47 = extractvalue { i32, i1 } %46, 1
  br i1 %47, label %if.end77.cleanup_crit_edge, label %lor.lhs.false87

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false87:                                  ; preds = %if.end77
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %48 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %50 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %yres_virtual, align 4
  %52 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %49, i32 %51)
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %lor.lhs.false87.cleanup_crit_edge, label %if.end101

lor.lhs.false87.cleanup_crit_edge:                ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end101:                                        ; preds = %lor.lhs.false87
  %call104 = tail call i32 %40(ptr noundef %var, ptr noundef %info) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end107:                                        ; preds = %if.end101
  %54 = ptrtoint ptr %activate1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %activate1, align 4
  %and109 = and i32 %55, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %cmp110.not = icmp eq i32 %and109, 0
  br i1 %cmp110.not, label %if.end113, label %if.end107.cleanup_crit_edge

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end113:                                        ; preds = %if.end107
  %56 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fbops, align 4
  %fb_get_caps = getelementptr inbounds %struct.fb_ops, ptr %57, i32 0, i32 19
  %58 = ptrtoint ptr %fb_get_caps to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fb_get_caps, align 4
  %tobool115.not = icmp eq ptr %59, null
  br i1 %tobool115.not, label %if.end113.if.end121_crit_edge, label %if.then116

if.end113.if.end121_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121

if.then116:                                       ; preds = %if.end113
  %call117 = tail call fastcc i32 @fb_check_caps(ptr noundef %info, ptr noundef %var, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then116.if.end121_crit_edge, label %if.then116.cleanup_crit_edge

if.then116.cleanup_crit_edge:                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then116.if.end121_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end121

if.end121:                                        ; preds = %if.then116.if.end121_crit_edge, %if.end113.if.end121_crit_edge
  %var122 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %60 = call ptr @memcpy(ptr %old_var, ptr %var122, i32 160)
  %61 = call ptr @memcpy(ptr %var122, ptr %var, i32 160)
  %62 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fbops, align 4
  %fb_set_par = getelementptr inbounds %struct.fb_ops, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %fb_set_par to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fb_set_par, align 4
  %tobool125.not = icmp eq ptr %65, null
  br i1 %tobool125.not, label %if.end121.if.end136_crit_edge, label %if.then126

if.end121.if.end136_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end136

if.then126:                                       ; preds = %if.end121
  %call129 = tail call i32 %65(ptr noundef %info) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then126.if.end136_crit_edge, label %if.then131

if.then126.if.end136_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end136

if.then131:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #16
  %66 = call ptr @memcpy(ptr %var122, ptr %old_var, i32 160)
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call129) #20
  br label %cleanup

if.end136:                                        ; preds = %if.then126.if.end136_crit_edge, %if.end121.if.end136_crit_edge
  %call138 = tail call i32 @fb_pan_display(ptr noundef %info, ptr noundef %var122)
  %cmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  %call139 = tail call i32 @fb_set_cmap(ptr noundef %cmap, ptr noundef %info) #14
  call void @fb_var_to_videomode(ptr noundef nonnull %mode, ptr noundef %var122) #14
  %modelist141 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  %prev = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13, i32 1
  %67 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev, align 4
  %tobool142.not = icmp eq ptr %68, null
  br i1 %tobool142.not, label %if.end136.if.end156_crit_edge, label %land.lhs.true143

if.end136.if.end156_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end156

land.lhs.true143:                                 ; preds = %if.end136
  %69 = ptrtoint ptr %modelist141 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %modelist141, align 4
  %tobool145.not = icmp eq ptr %70, null
  br i1 %tobool145.not, label %land.lhs.true143.if.end156_crit_edge, label %land.lhs.true146

land.lhs.true143.if.end156_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end156

land.lhs.true146:                                 ; preds = %land.lhs.true143
  %71 = ptrtoint ptr %modelist141 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %modelist141, align 4
  %cmp.i.not = icmp eq ptr %72, %modelist141
  br i1 %cmp.i.not, label %land.lhs.true146.if.end156_crit_edge, label %if.end153

land.lhs.true146.if.end156_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end156

if.end153:                                        ; preds = %land.lhs.true146
  %call152 = call i32 @fb_add_videomode(ptr noundef nonnull %mode, ptr noundef %modelist141) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool154.not = icmp eq i32 %call152, 0
  br i1 %tobool154.not, label %if.end153.if.end156_crit_edge, label %if.end153.cleanup_crit_edge

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end153.if.end156_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end156

if.end156:                                        ; preds = %if.end153.if.end156_crit_edge, %land.lhs.true146.if.end156_crit_edge, %land.lhs.true143.if.end156_crit_edge, %if.end136.if.end156_crit_edge
  %73 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %info, ptr %event, align 4
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %mode, ptr %1, align 4
  %call158 = call i32 @fb_notifier_call_chain(i32 noundef 1, ptr noundef nonnull %event) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end156, %if.end153.cleanup_crit_edge, %if.then131, %if.then116.cleanup_crit_edge, %if.end107.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %lor.lhs.false87.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %lor.lhs.false73.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.then68, %lor.lhs.false60.cleanup_crit_edge, %lor.lhs.false56.cleanup_crit_edge, %lor.lhs.false52.cleanup_crit_edge, %lor.lhs.false49.cleanup_crit_edge, %lor.lhs.false45.cleanup_crit_edge, %lor.lhs.false41.cleanup_crit_edge, %lor.lhs.false37.cleanup_crit_edge, %lor.lhs.false34.cleanup_crit_edge, %lor.lhs.false31.cleanup_crit_edge, %lor.lhs.false28.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end8.thread
  %retval.0 = phi i32 [ %7, %if.end8.thread ], [ %call129, %if.then131 ], [ 0, %if.end156 ], [ 0, %if.then68 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false60.cleanup_crit_edge ], [ -22, %lor.lhs.false56.cleanup_crit_edge ], [ -22, %lor.lhs.false52.cleanup_crit_edge ], [ -22, %lor.lhs.false49.cleanup_crit_edge ], [ -22, %lor.lhs.false45.cleanup_crit_edge ], [ -22, %lor.lhs.false41.cleanup_crit_edge ], [ -22, %lor.lhs.false37.cleanup_crit_edge ], [ -22, %lor.lhs.false34.cleanup_crit_edge ], [ -22, %lor.lhs.false31.cleanup_crit_edge ], [ -22, %lor.lhs.false28.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then24.cleanup_crit_edge ], [ -22, %lor.lhs.false73.cleanup_crit_edge ], [ -22, %if.end70.cleanup_crit_edge ], [ -22, %lor.lhs.false87.cleanup_crit_edge ], [ -22, %if.end77.cleanup_crit_edge ], [ %call104, %if.end101.cleanup_crit_edge ], [ 0, %if.end107.cleanup_crit_edge ], [ %call117, %if.then116.cleanup_crit_edge ], [ %call152, %if.end153.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mode) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %old_var)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_var_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_mode_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbcon_mode_deleted(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_delete_videomode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fb_check_caps(ptr noundef %info, ptr noundef %var, i32 noundef %activate) unnamed_addr #3 align 64 {
entry:
  %caps = alloca %struct.fb_blit_caps, align 4
  %fbcaps = alloca %struct.fb_blit_caps, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %caps) #14
  %0 = getelementptr inbounds %struct.fb_blit_caps, ptr %caps, i32 0, i32 2
  %1 = getelementptr inbounds %struct.fb_blit_caps, ptr %caps, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fbcaps) #14
  %2 = getelementptr inbounds %struct.fb_blit_caps, ptr %fbcaps, i32 0, i32 2
  %3 = call ptr @memset(ptr %caps, i32 0, i32 12)
  %4 = call ptr @memset(ptr %fbcaps, i32 0, i32 16)
  %and = lshr i32 %activate, 6
  %and.lobit = and i32 %and, 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.lobit, ptr %1, align 4
  call void @fbcon_get_requirement(ptr noundef %info, ptr noundef nonnull %caps) #14
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %6 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbops, align 4
  %fb_get_caps = getelementptr inbounds %struct.fb_ops, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %fb_get_caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb_get_caps, align 4
  call void %9(ptr noundef %info, ptr noundef nonnull %fbcaps, ptr noundef %var) #14
  %10 = ptrtoint ptr %fbcaps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fbcaps, align 4
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %caps, align 4
  %14 = xor i32 %11, -1
  %and3 = and i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %15 = getelementptr inbounds %struct.fb_blit_caps, ptr %fbcaps, i32 0, i32 1
  %16 = getelementptr inbounds %struct.fb_blit_caps, ptr %caps, i32 0, i32 1
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %15, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %21 = xor i32 %18, -1
  %and8 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %2, align 4
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp = icmp ult i32 %23, %25
  br i1 %cmp, label %lor.lhs.false10.if.then_crit_edge, label %lor.lhs.false10.if.end_crit_edge

lor.lhs.false10.if.end_crit_edge:                 ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.lhs.false10.if.then_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false10.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false10.if.end_crit_edge
  %err.0 = phi i32 [ -22, %if.then ], [ 0, %lor.lhs.false10.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fbcaps) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %caps) #14
  ret i32 %err.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_cmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_add_videomode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_notifier_call_chain(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_blank(ptr noundef %info, i32 noundef %blank) #3 align 64 {
entry:
  %blank.addr = alloca i32, align 4
  %event = alloca %struct.fb_event, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %blank.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %blank, ptr %blank.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #14
  %1 = getelementptr inbounds %struct.fb_event, ptr %event, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %blank)
  %cmp = icmp sgt i32 %blank, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %blank.addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %blank.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %info, ptr %event, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %blank.addr, ptr %1, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %5 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fbops, align 4
  %fb_blank = getelementptr inbounds %struct.fb_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %fb_blank to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fb_blank, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.end5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %blank.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blank.addr, align 4
  %call = call i32 %8(i32 noundef %10, ptr noundef %info) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = call i32 @fb_notifier_call_chain(i32 noundef 9, ptr noundef nonnull %event) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %ret.016 = phi i32 [ 0, %if.then7 ], [ %call, %if.end5.if.end9_crit_edge ], [ -22, %if.end.if.end9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #14
  ret i32 %ret.016
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @remove_conflicting_framebuffers(ptr noundef %a, ptr noundef %name, i1 noundef zeroext %primary) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %call7.i.i.i, align 8
  %ranges = getelementptr inbounds %struct.apertures_struct, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ranges, align 4
  %size = getelementptr inbounds %struct.apertures_struct, ptr %call7.i.i.i, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %size, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %a.addr.0 = phi ptr [ %a, %entry.if.end5_crit_edge ], [ %call7.i.i.i, %if.end ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @registration_lock, i32 noundef 0) #14
  tail call fastcc void @do_remove_conflicting_framebuffers(ptr noundef nonnull %a.addr.0, ptr noundef %name, i1 noundef zeroext %primary)
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #14
  br i1 %tobool.not, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %a.addr.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.end5.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_remove_conflicting_framebuffers(ptr noundef readonly %a, ptr noundef %name, i1 noundef zeroext %primary) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %a, null
  %primary.not = xor i1 %primary, true
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %i.030
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.else:                                          ; preds = %for.body
  %flags = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else.for.inc_crit_edge, label %if.end

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %if.else
  %apertures = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %apertures to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apertures, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end.lor.lhs.false_crit_edge, label %for.cond.preheader.i

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

for.cond.preheader.i:                             ; preds = %if.end
  %6 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp42.not.i = icmp eq i32 %7, 0
  br i1 %cmp42.not.i, label %for.cond.preheader.i.lor.lhs.false_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.lor.lhs.false_crit_edge:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

for.body.i:                                       ; preds = %for.inc19.critedge.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.043.i = phi i32 [ %inc20.i, %for.inc19.critedge.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.apertures_struct, ptr %a, i32 0, i32 1, i32 %i.043.i
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp440.not.i = icmp eq i32 %9, 0
  br i1 %cmp440.not.i, label %for.body.i.for.inc19.critedge.i_crit_edge, label %for.body5.lr.ph.i

for.body.i.for.inc19.critedge.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19.critedge.i

for.body5.lr.ph.i:                                ; preds = %for.body.i
  %size11.i = getelementptr %struct.apertures_struct, ptr %a, i32 0, i32 1, i32 %i.043.i, i32 1
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %j.041.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %inc.i, %for.inc.i.for.body5.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.apertures_struct, ptr %5, i32 0, i32 1, i32 %j.041.i
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7.i, align 4
  %conv.i = zext i32 %11 to i64
  %size.i = getelementptr %struct.apertures_struct, ptr %5, i32 0, i32 1, i32 %j.041.i, i32 1
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  %conv8.i = zext i32 %13 to i64
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %conv10.i = zext i32 %15 to i64
  %16 = ptrtoint ptr %size11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size11.i, align 4
  %conv12.i = zext i32 %17 to i64
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i64 noundef %conv.i, i64 noundef %conv8.i, i64 noundef %conv10.i, i64 noundef %conv12.i) #20
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7.i, align 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.i.i = icmp eq i32 %19, %21
  br i1 %cmp.i.i, label %for.body5.i.do.end_crit_edge, label %if.end.i.i

for.body5.i.do.end_crit_edge:                     ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i.i:                                       ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp4.i.i = icmp ugt i32 %19, %21
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %if.end.i.i.for.inc.i_crit_edge

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %22 = ptrtoint ptr %size11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size11.i, align 4
  %add.i.i = add i32 %23, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add.i.i)
  %cmp7.i.i = icmp ult i32 %19, %add.i.i
  br i1 %cmp7.i.i, label %land.lhs.true.i.i.do.end_crit_edge, label %land.lhs.true.i.i.for.inc.i_crit_edge

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i.i.do.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.inc.i:                                        ; preds = %land.lhs.true.i.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %j.041.i, 1
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %5, align 4
  %cmp4.i = icmp ult i32 %inc.i, %25
  br i1 %cmp4.i, label %for.inc.i.for.body5.i_crit_edge, label %for.inc.i.for.inc19.critedge.i_crit_edge

for.inc.i.for.inc19.critedge.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19.critedge.i

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5.i

for.inc19.critedge.i:                             ; preds = %for.inc.i.for.inc19.critedge.i_crit_edge, %for.body.i.for.inc19.critedge.i_crit_edge
  %inc20.i = add nuw i32 %i.043.i, 1
  %26 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %a, align 4
  %cmp.i = icmp ult i32 %inc20.i, %27
  br i1 %cmp.i, label %for.inc19.critedge.i.for.body.i_crit_edge, label %for.inc19.critedge.i.lor.lhs.false_crit_edge

for.inc19.critedge.i.lor.lhs.false_crit_edge:     ; preds = %for.inc19.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

for.inc19.critedge.i.for.body.i_crit_edge:        ; preds = %for.inc19.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

lor.lhs.false:                                    ; preds = %for.inc19.critedge.i.lor.lhs.false_crit_edge, %for.cond.preheader.i.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %or.cond = or i1 %tobool1.not.i, %primary.not
  br i1 %or.cond, label %lor.lhs.false.for.inc_crit_edge, label %land.lhs.true7

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true7:                                   ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool8.not = icmp eq i32 %29, 0
  br i1 %tobool8.not, label %land.lhs.true7.for.inc_crit_edge, label %land.lhs.true9

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %ranges = getelementptr inbounds %struct.apertures_struct, ptr %5, i32 0, i32 1
  %30 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 655360, i32 %31)
  %cmp11 = icmp eq i32 %31, 655360
  br i1 %cmp11, label %land.lhs.true9.do.end_crit_edge, label %land.lhs.true9.for.inc_crit_edge

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %land.lhs.true9.do.end_crit_edge, %land.lhs.true.i.i.do.end_crit_edge, %for.body5.i.do.end_crit_edge
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %33, i32 0, i32 7
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %i.030, ptr noundef %name, ptr noundef %fix) #20
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @do_unregister_framebuffer(ptr noundef %35)
  br label %for.inc

for.inc:                                          ; preds = %do.end, %land.lhs.true9.for.inc_crit_edge, %land.lhs.true7.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_firmware_framebuffer(ptr noundef %a) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup22_crit_edge, label %if.end

if.then.cleanup22_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup22

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %call7.i.i.i, align 8
  %ranges = getelementptr inbounds %struct.apertures_struct, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ranges, align 4
  %size = getelementptr inbounds %struct.apertures_struct, ptr %call7.i.i.i, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %size, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %a.addr.0 = phi ptr [ %a, %entry.if.end5_crit_edge ], [ %call7.i.i.i, %if.end ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @registration_lock, i32 noundef 0) #14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5
  %cmp52 = phi i1 [ true, %if.end5 ], [ %cmp, %for.inc.for.body_crit_edge ]
  %i.051 = phi i32 [ 0, %if.end5 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx6 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %i.051
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.else:                                          ; preds = %for.body
  %flags = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.else.for.inc_crit_edge, label %if.end12

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end12:                                         ; preds = %if.else
  %apertures = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 31
  %8 = ptrtoint ptr %apertures to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apertures, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end12.for.inc_crit_edge, label %for.cond.preheader.i

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.cond.preheader.i:                             ; preds = %if.end12
  %10 = ptrtoint ptr %a.addr.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %a.addr.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp42.not.i = icmp eq i32 %11, 0
  br i1 %cmp42.not.i, label %for.cond.preheader.i.for.inc_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.inc_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.body.i:                                       ; preds = %for.inc19.critedge.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.043.i = phi i32 [ %inc20.i, %for.inc19.critedge.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.apertures_struct, ptr %a.addr.0, i32 0, i32 1, i32 %i.043.i
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp440.not.i = icmp eq i32 %13, 0
  br i1 %cmp440.not.i, label %for.body.i.for.inc19.critedge.i_crit_edge, label %for.body5.lr.ph.i

for.body.i.for.inc19.critedge.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19.critedge.i

for.body5.lr.ph.i:                                ; preds = %for.body.i
  %size11.i = getelementptr %struct.apertures_struct, ptr %a.addr.0, i32 0, i32 1, i32 %i.043.i, i32 1
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %j.041.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %inc.i, %for.inc.i.for.body5.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.apertures_struct, ptr %9, i32 0, i32 1, i32 %j.041.i
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i, align 4
  %conv.i = zext i32 %15 to i64
  %size.i = getelementptr %struct.apertures_struct, ptr %9, i32 0, i32 1, i32 %j.041.i, i32 1
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  %conv8.i = zext i32 %17 to i64
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %conv10.i = zext i32 %19 to i64
  %20 = ptrtoint ptr %size11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size11.i, align 4
  %conv12.i = zext i32 %21 to i64
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i64 noundef %conv.i, i64 noundef %conv8.i, i64 noundef %conv10.i, i64 noundef %conv12.i) #20
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7.i, align 4
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.i.i = icmp eq i32 %23, %25
  br i1 %cmp.i.i, label %for.body5.i.for.end_crit_edge, label %if.end.i.i

for.body5.i.for.end_crit_edge:                    ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.i.i:                                       ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp4.i.i = icmp ugt i32 %23, %25
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %if.end.i.i.for.inc.i_crit_edge

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %26 = ptrtoint ptr %size11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size11.i, align 4
  %add.i.i = add i32 %27, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %add.i.i)
  %cmp7.i.i = icmp ult i32 %23, %add.i.i
  br i1 %cmp7.i.i, label %land.lhs.true.i.i.for.end_crit_edge, label %land.lhs.true.i.i.for.inc.i_crit_edge

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i.i.for.end_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.i:                                        ; preds = %land.lhs.true.i.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %j.041.i, 1
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %9, align 4
  %cmp4.i = icmp ult i32 %inc.i, %29
  br i1 %cmp4.i, label %for.inc.i.for.body5.i_crit_edge, label %for.inc.i.for.inc19.critedge.i_crit_edge

for.inc.i.for.inc19.critedge.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19.critedge.i

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5.i

for.inc19.critedge.i:                             ; preds = %for.inc.i.for.inc19.critedge.i_crit_edge, %for.body.i.for.inc19.critedge.i_crit_edge
  %inc20.i = add nuw i32 %i.043.i, 1
  %30 = ptrtoint ptr %a.addr.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %a.addr.0, align 4
  %cmp.i = icmp ult i32 %inc20.i, %31
  br i1 %cmp.i, label %for.inc19.critedge.i.for.body.i_crit_edge, label %for.inc19.critedge.i.for.inc_crit_edge

for.inc19.critedge.i.for.inc_crit_edge:           ; preds = %for.inc19.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc19.critedge.i.for.body.i_crit_edge:        ; preds = %for.inc19.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc:                                          ; preds = %for.inc19.critedge.i.for.inc_crit_edge, %for.cond.preheader.i.for.inc_crit_edge, %if.end12.for.inc_crit_edge, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.051)
  %cmp = icmp ult i32 %i.051, 31
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.i.i.for.end_crit_edge, %for.body5.i.for.end_crit_edge
  %cmp50 = phi i1 [ %cmp52, %for.body5.i.for.end_crit_edge ], [ %cmp52, %land.lhs.true.i.i.for.end_crit_edge ], [ %cmp, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #14
  br i1 %tobool.not, label %if.then19, label %for.end.cleanup22_crit_edge

for.end.cleanup22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup22

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %a.addr.0) #14
  br label %cleanup22

cleanup22:                                        ; preds = %if.then19, %for.end.cleanup22_crit_edge, %if.then.cleanup22_crit_edge
  %retval.0 = phi i1 [ %cmp50, %if.then19 ], [ %cmp50, %for.end.cleanup22_crit_edge ], [ false, %if.then.cleanup22_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @remove_conflicting_pci_framebuffers(ptr noundef %pdev, ptr noundef %name) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 9
  %and.lobit = and i32 %and, 1
  %flags.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 3
  %2 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.1, align 4
  %and.1 = lshr i32 %3, 9
  %and.lobit.1 = and i32 %and.1, 1
  %spec.select.1 = add nuw nsw i32 %and.lobit.1, %and.lobit
  %flags.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 3
  %4 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.2, align 4
  %and.2 = lshr i32 %5, 9
  %and.lobit.2 = and i32 %and.2, 1
  %spec.select.2 = add nuw nsw i32 %and.lobit.2, %spec.select.1
  %flags.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 3
  %6 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.3, align 4
  %and.3 = lshr i32 %7, 9
  %and.lobit.3 = and i32 %and.3, 1
  %spec.select.3 = add nuw nsw i32 %and.lobit.3, %spec.select.2
  %flags.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 3
  %8 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.4, align 4
  %and.4 = lshr i32 %9, 9
  %and.lobit.4 = and i32 %and.4, 1
  %spec.select.4 = add nuw nsw i32 %and.lobit.4, %spec.select.3
  %flags.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 3
  %10 = ptrtoint ptr %flags.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.5, align 4
  %and.5 = lshr i32 %11, 9
  %and.lobit.5 = and i32 %and.5, 1
  %spec.select.5 = add nuw nsw i32 %and.lobit.5, %spec.select.4
  %12 = shl nuw nsw i32 %spec.select.5, 3
  %13 = or i32 %12, 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #18
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %alloc_apertures.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

alloc_apertures.exit:                             ; preds = %entry
  %14 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select.5, ptr %call9.i.i.i, align 128
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br label %for.body7

for.body7:                                        ; preds = %for.inc42.for.body7_crit_edge, %alloc_apertures.exit
  %bar.186 = phi i32 [ 0, %alloc_apertures.exit ], [ %inc43, %for.inc42.for.body7_crit_edge ]
  %idx.285 = phi i32 [ 0, %alloc_apertures.exit ], [ %idx.3, %for.inc42.for.body7_crit_edge ]
  %arrayidx9 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %bar.186
  %flags10 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %bar.186, i32 3
  %15 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags10, align 4
  %and11 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %for.body7.for.inc42_crit_edge, label %if.end14

for.body7.for.inc42_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc42

if.end14:                                         ; preds = %for.body7
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9, align 8
  %arrayidx17 = getelementptr %struct.apertures_struct, ptr %call9.i.i.i, i32 0, i32 1, i32 %idx.285
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx17, align 4
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %bar.186, i32 1
  %20 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp20 = icmp eq i32 %21, 0
  %sub = sub i32 1, %18
  %add = add i32 %sub, %21
  %cond = select i1 %cmp20, i32 0, i32 %add
  %size = getelementptr %struct.apertures_struct, ptr %call9.i.i.i, i32 0, i32 1, i32 %idx.285, i32 1
  %22 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond, ptr %size, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remove_conflicting_pci_framebuffers.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remove_conflicting_pci_framebuffers, %if.then33)) #14
          to label %do.end [label %if.then33], !srcloc !147

if.then33:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx9, align 8
  %25 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @remove_conflicting_pci_framebuffers.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %bar.186, i32 noundef %24, i32 noundef %26) #14
  br label %do.end

do.end:                                           ; preds = %if.then33, %if.end14
  %inc41 = add i32 %idx.285, 1
  br label %for.inc42

for.inc42:                                        ; preds = %do.end, %for.body7.for.inc42_crit_edge
  %idx.3 = phi i32 [ %inc41, %do.end ], [ %idx.285, %for.body7.for.inc42_crit_edge ]
  %inc43 = add nuw nsw i32 %bar.186, 1
  %exitcond.not = icmp eq i32 %inc43, 6
  br i1 %exitcond.not, label %remove_conflicting_framebuffers.exit, label %for.inc42.for.body7_crit_edge

for.inc42.for.body7_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body7

remove_conflicting_framebuffers.exit:             ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @registration_lock, i32 noundef 0) #14
  tail call fastcc void @do_remove_conflicting_framebuffers(ptr noundef nonnull %call9.i.i.i, ptr noundef %name, i1 noundef zeroext false) #14
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %remove_conflicting_framebuffers.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %remove_conflicting_framebuffers.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_framebuffer(ptr noundef %fb_info) #3 align 64 {
entry:
  %mode.i = alloca %struct.fb_videomode, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @registration_lock, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mode.i) #14
  %0 = call ptr @memset(ptr %mode.i, i32 255, i32 56)
  %flags.i.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 2
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i, align 4
  %or.i.i = xor i32 %2, 1048576
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %apertures.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 31
  %3 = ptrtoint ptr %apertures.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %apertures.i, align 4
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 7
  tail call fastcc void @do_remove_conflicting_framebuffers(ptr noundef %4, ptr noundef %fix.i, i1 noundef zeroext false) #14
  %5 = load i32, ptr @num_registered_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp.i = icmp eq i32 %5, 32
  br i1 %cmp.i, label %entry.do_register_framebuffer.exit_crit_edge, label %if.end4.i

entry.do_register_framebuffer.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do_register_framebuffer.exit

if.end4.i:                                        ; preds = %entry
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr @num_registered_fb, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4.i
  %i.0128.i = phi i32 [ 0, %if.end4.i ], [ %inc9.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %i.0128.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool6.not.i = icmp eq ptr %7, null
  br i1 %tobool6.not.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc9.i = add nuw nsw i32 %i.0128.i, 1
  %exitcond.not.i = icmp eq i32 %inc9.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.0128.i, %for.body.i.for.end.i_crit_edge ], [ 32, %for.inc.i.for.end.i_crit_edge ]
  %node.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 1
  %8 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.0.lcssa.i, ptr %node.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fb_info, i32 noundef 4) #14
  %9 = ptrtoint ptr %fb_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %fb_info, align 4
  %lock.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @do_register_framebuffer.__key) #14
  %mm_lock.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mm_lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @do_register_framebuffer.__key.13) #14
  %10 = load ptr, ptr @fb_class, align 4
  %device.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 21
  %11 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device.i, align 4
  %or.i = or i32 %i.0.lcssa.i, 30408704
  %call13.i = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %10, ptr noundef %12, i32 noundef %or.i, ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef %i.0.lcssa.i) #14
  %dev.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 22
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call13.i, ptr %dev.i, align 4
  %cmp.i.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end19.i, label %if.else.i

do.end19.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %call13.i to i32
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %i.0.lcssa.i, i32 noundef %14) #20
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dev.i, align 4
  br label %if.end25.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call24.i = tail call i32 @fb_init_device(ptr noundef %fb_info) #14
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i, %do.end19.i
  %pixmap.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 10
  %16 = ptrtoint ptr %pixmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pixmap.i, align 4
  %cmp26.i = icmp eq ptr %17, null
  br i1 %cmp26.i, label %if.then27.i, label %if.end25.i.if.end41.i_crit_edge

if.end25.i.if.end41.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 8192) #17
  %19 = ptrtoint ptr %pixmap.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %pixmap.i, align 4
  %tobool33.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool33.not.i, label %if.then27.i.if.end41.i_crit_edge, label %if.then34.i

if.then27.i.if.end41.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.i

if.then34.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  %size.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8192, ptr %size.i, align 4
  %buf_align.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 10, i32 3
  %21 = ptrtoint ptr %buf_align.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %buf_align.i, align 4
  %scan_align.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 10, i32 4
  %22 = ptrtoint ptr %scan_align.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %scan_align.i, align 4
  %access_align.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 10, i32 5
  %23 = ptrtoint ptr %access_align.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32, ptr %access_align.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 10, i32 6
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %flags.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then34.i, %if.then27.i.if.end41.i_crit_edge, %if.end25.i.if.end41.i_crit_edge
  %offset.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 10, i32 2
  %25 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %offset.i, align 4
  %blit_x.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 10, i32 7
  %26 = ptrtoint ptr %blit_x.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %blit_x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool44.not.i = icmp eq i32 %27, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end41.i.if.end48.i_crit_edge

if.end41.i.if.end48.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %blit_x.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %blit_x.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %if.end41.i.if.end48.i_crit_edge
  %blit_y.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 10, i32 8
  %29 = ptrtoint ptr %blit_y.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blit_y.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool50.not.i = icmp eq i32 %30, 0
  br i1 %tobool50.not.i, label %if.then51.i, label %if.end48.i.if.end54.i_crit_edge

if.end48.i.if.end54.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.i

if.then51.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %blit_y.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %blit_y.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then51.i, %if.end48.i.if.end54.i_crit_edge
  %modelist.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 13, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %tobool55.not.i = icmp eq ptr %33, null
  br i1 %tobool55.not.i, label %if.end54.i.if.then58.i_crit_edge, label %lor.lhs.false.i

if.end54.i.if.then58.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then58.i

lor.lhs.false.i:                                  ; preds = %if.end54.i
  %34 = ptrtoint ptr %modelist.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %modelist.i, align 4
  %tobool57.not.i = icmp eq ptr %35, null
  br i1 %tobool57.not.i, label %lor.lhs.false.i.if.then58.i_crit_edge, label %lor.lhs.false.i.if.end60.i_crit_edge

lor.lhs.false.i.if.end60.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60.i

lor.lhs.false.i.if.then58.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then58.i

if.then58.i:                                      ; preds = %lor.lhs.false.i.if.then58.i_crit_edge, %if.end54.i.if.then58.i_crit_edge
  %36 = ptrtoint ptr %modelist.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %modelist.i, ptr %modelist.i, align 4
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %modelist.i, ptr %prev.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then58.i, %lor.lhs.false.i.if.end60.i_crit_edge
  %skip_vt_switch.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 32
  %38 = ptrtoint ptr %skip_vt_switch.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %skip_vt_switch.i, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool61.not.i = icmp eq i8 %39, 0
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  tail call void @pm_vt_switch_required(ptr noundef %41, i1 noundef zeroext %tobool61.not.i) #14
  %var.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 6
  call void @fb_var_to_videomode(ptr noundef nonnull %mode.i, ptr noundef %var.i) #14
  %call68.i = call i32 @fb_add_videomode(ptr noundef nonnull %mode.i, ptr noundef %modelist.i) #14
  %arrayidx69.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %i.0.lcssa.i
  %42 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %fb_info, ptr %arrayidx69.i, align 4
  %43 = load i8, ptr @lockless_register_fb, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool70.not.i = icmp eq i8 %43, 0
  br i1 %tobool70.not.i, label %if.then71.i, label %if.else72.i

if.then71.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @console_lock() #14
  br label %if.end73.i

if.else72.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr nonnull @ignore_console_lock_warning, i32 1, i32 3, i32 1) #14
  %44 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ignore_console_lock_warning, ptr nonnull @ignore_console_lock_warning, i32 1, ptr nonnull elementtype(i32) @ignore_console_lock_warning) #14, !srcloc !148
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.else72.i, %if.then71.i
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #14
  %call74.i = call i32 @fbcon_fb_registered(ptr noundef %fb_info) #14
  call void @mutex_unlock(ptr noundef %lock.i) #14
  %45 = load i8, ptr @lockless_register_fb, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool75.not.i = icmp eq i8 %45, 0
  br i1 %tobool75.not.i, label %if.then76.i, label %if.else77.i

if.then76.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @console_unlock() #14
  br label %do_register_framebuffer.exit

if.else77.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i126.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr nonnull @ignore_console_lock_warning, i32 1, i32 3, i32 1) #14
  %46 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ignore_console_lock_warning, ptr nonnull @ignore_console_lock_warning, i32 1, ptr nonnull elementtype(i32) @ignore_console_lock_warning) #14, !srcloc !149
  br label %do_register_framebuffer.exit

do_register_framebuffer.exit:                     ; preds = %if.else77.i, %if.then76.i, %entry.do_register_framebuffer.exit_crit_edge
  %retval.0.i = phi i32 [ -6, %entry.do_register_framebuffer.exit_crit_edge ], [ %call74.i, %if.else77.i ], [ %call74.i, %if.then76.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mode.i) #14
  call void @mutex_unlock(ptr noundef nonnull @registration_lock) #14
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_framebuffer(ptr noundef %fb_info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @registration_lock, i32 noundef 0) #14
  tail call fastcc void @do_unregister_framebuffer(ptr noundef %fb_info)
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_unregister_framebuffer(ptr noundef %fb_info) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %node.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 1
  %0 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %2 = icmp ugt i32 %1, 31
  br i1 %2, label %entry.do.end.i_crit_edge, label %lor.rhs.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

lor.rhs.i:                                        ; preds = %entry
  %arrayidx.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.not.i = icmp eq ptr %4, %fb_info
  br i1 %cmp2.not.i, label %if.end23.i, label %lor.rhs.i.do.end.i_crit_edge, !prof !150

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1688, i32 noundef 9, ptr noundef null) #14
  br label %unlink_framebuffer.exit

if.end23.i:                                       ; preds = %lor.rhs.i
  %dev.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 22
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %tobool24.not.i = icmp eq ptr %6, null
  br i1 %tobool24.not.i, label %if.end23.i.unlink_framebuffer.exit_crit_edge, label %if.end26.i

if.end23.i.unlink_framebuffer.exit_crit_edge:     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlink_framebuffer.exit

if.end26.i:                                       ; preds = %if.end23.i
  %7 = load ptr, ptr @fb_class, align 4
  %or.i = or i32 %1, 30408704
  tail call void @device_destroy(ptr noundef %7, i32 noundef %or.i) #14
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void @pm_vt_switch_unregister(ptr noundef %9) #14
  %10 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %11)
  %12 = icmp ugt i32 %11, 31
  br i1 %12, label %if.end26.i.do.end.i.i_crit_edge, label %lor.rhs.i.i

if.end26.i.do.end.i.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

lor.rhs.i.i:                                      ; preds = %if.end26.i
  %arrayidx.i.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %11
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp2.not.i.i = icmp eq ptr %14, %fb_info
  br i1 %cmp2.not.i.i, label %if.end23.i.i, label %lor.rhs.i.i.do.end.i.i_crit_edge, !prof !150

lor.rhs.i.i.do.end.i.i_crit_edge:                 ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.rhs.i.i.do.end.i.i_crit_edge, %if.end26.i.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1673, i32 noundef 9, ptr noundef null) #14
  br label %unbind_console.exit.i

if.end23.i.i:                                     ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @console_lock() #14
  %lock.i.i.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i.i, i32 noundef 0) #14
  tail call void @fbcon_fb_unbind(ptr noundef %fb_info) #14
  tail call void @mutex_unlock(ptr noundef %lock.i.i.i) #14
  tail call void @console_unlock() #14
  br label %unbind_console.exit.i

unbind_console.exit.i:                            ; preds = %if.end23.i.i, %do.end.i.i
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dev.i, align 4
  br label %unlink_framebuffer.exit

unlink_framebuffer.exit:                          ; preds = %unbind_console.exit.i, %if.end23.i.unlink_framebuffer.exit_crit_edge, %do.end.i
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 10
  %16 = ptrtoint ptr %pixmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pixmap, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %unlink_framebuffer.exit.if.end_crit_edge, label %land.lhs.true

unlink_framebuffer.exit.if.end_crit_edge:         ; preds = %unlink_framebuffer.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %unlink_framebuffer.exit
  %flags = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 10, i32 6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %17) #14
  %20 = ptrtoint ptr %pixmap to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pixmap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %unlink_framebuffer.exit.if.end_crit_edge
  %modelist = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 13
  tail call void @fb_destroy_modelist(ptr noundef %modelist) #14
  %21 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %node.i, align 4
  %arrayidx = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx, align 4
  %24 = load i32, ptr @num_registered_fb, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr @num_registered_fb, align 4
  tail call void @fb_cleanup_device(ptr noundef %fb_info) #14
  tail call void @console_lock() #14
  tail call void @fbcon_fb_unregistered(ptr noundef %fb_info) #14
  tail call void @console_unlock() #14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fb_info, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %fb_info, i32 1, i32 3, i32 1) #14
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fb_info, ptr %fb_info, i32 1, ptr elementtype(i32) %fb_info) #14, !srcloc !152
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_fb_info.exit_crit_edge, label %if.then10.i.i.i.i, !prof !150

if.end5.i.i.i.i.put_fb_info.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_fb_info.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %fb_info, i32 noundef 3) #14
  br label %put_fb_info.exit

if.end.i:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !153
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 20
  %26 = ptrtoint ptr %fbops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fbops.i, align 4
  %fb_destroy.i = getelementptr inbounds %struct.fb_ops, ptr %27, i32 0, i32 20
  %28 = ptrtoint ptr %fb_destroy.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fb_destroy.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.end.i.put_fb_info.exit_crit_edge, label %if.then1.i

if.end.i.put_fb_info.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_fb_info.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %29(ptr noundef %fb_info) #14
  br label %put_fb_info.exit

put_fb_info.exit:                                 ; preds = %if.then1.i, %if.end.i.put_fb_info.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_fb_info.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fb_set_suspend(ptr noundef %info, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %0 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @is_console_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !146

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1920, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool24.not = icmp eq i32 %state, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @fbcon_suspended(ptr noundef %info) #14
  %state26 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %2 = ptrtoint ptr %state26 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %state26, align 4
  br label %if.end28

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %state27 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %3 = ptrtoint ptr %state27 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state27, align 4
  tail call void @fbcon_resumed(ptr noundef %info) #14
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_console_locked() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_suspended(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_resumed(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fbmem_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.3, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @proc_fb_seq_ops, i32 noundef 0, ptr noundef null) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__register_chrdev(i32 noundef 29, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.3, ptr noundef nonnull @fb_fops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef 29) #20
  br label %err_chrdev

if.end5:                                          ; preds = %if.end
  %call7 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @fbmem_init.__key) #14
  store ptr %call7, ptr @fb_class, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %call7 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %0) #20
  store ptr null, ptr @fb_class, align 4
  tail call void @__unregister_chrdev(i32 noundef 29, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.3) #14
  br label %err_chrdev

if.end16:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @fb_console_init() #20
  br label %cleanup

err_chrdev:                                       ; preds = %if.then9, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %0, %if.then9 ]
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %err_chrdev, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_chrdev ], [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_new_modelist(ptr noundef %info) local_unnamed_addr #3 align 64 {
entry:
  %var = alloca %struct.fb_var_screeninfo, align 4
  %mode = alloca %struct.fb_videomode, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var) #14
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %0 = call ptr @memcpy(ptr %var, ptr %var1, i32 160)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mode) #14
  %1 = call ptr @memset(ptr %mode, i32 255, i32 56)
  %modelist2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  %2 = ptrtoint ptr %modelist2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %modelist2, align 4
  %cmp.i.not36 = icmp eq ptr %3, %modelist2
  br i1 %cmp.i.not36, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.037 = phi ptr [ %3, %for.body.lr.ph ], [ %n.039, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %pos.037 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.039 = load ptr, ptr %pos.037, align 4
  %mode5 = getelementptr inbounds %struct.fb_modelist, ptr %pos.037, i32 0, i32 1
  call void @fb_videomode_to_var(ptr noundef nonnull %var, ptr noundef %mode5) #14
  %5 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %activate, align 4
  %call6 = call i32 @fb_set_var(ptr noundef %info, ptr noundef nonnull %var)
  call void @fb_var_to_videomode(ptr noundef nonnull %mode, ptr noundef nonnull %var) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %call8 = call i32 @fb_mode_is_equal(ptr noundef %mode5, ptr noundef nonnull %mode) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.037) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.037, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %pos.037 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pos.037, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %12 = ptrtoint ptr %pos.037 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.037, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.037, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %pos.037) #14
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %lor.lhs.false.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %n.039, %modelist2
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %14 = ptrtoint ptr %modelist2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %modelist2, align 4
  %cmp.i33.not = icmp eq ptr %15, %modelist2
  br i1 %cmp.i33.not, label %for.end.cleanup_crit_edge, label %if.end15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @fbcon_new_modelist(ptr noundef %info) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 1, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mode) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_new_modelist(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_get_requirement(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_init_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_vt_switch_required(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbcon_fb_registered(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modelist(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_cleanup_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_fb_unregistered(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_vt_switch_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_fb_unbind(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fb_console_init() local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fb_seq_start(ptr nocapture noundef readnone %m, ptr noundef readonly %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @registration_lock, i32 noundef 0) #14
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %1)
  %cmp = icmp slt i64 %1, 32
  %spec.select = select i1 %cmp, ptr %pos, ptr null
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fb_seq_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @fb_seq_next(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v, ptr noundef %pos) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %inc)
  %cmp = icmp slt i64 %inc, 32
  %spec.select = select i1 %cmp, ptr %pos, ptr null
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_seq_show(ptr noundef %m, ptr nocapture noundef readonly %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %v, align 8
  %conv = trunc i64 %1 to i32
  %arrayidx = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %node = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef %5, ptr noundef %fix) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %1 to i32
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i.i, align 8
  %i_rdev.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %i_rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_rdev.i.i, align 8
  %and.i.i = and i32 %5, 1048575
  %arrayidx.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %and.i.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  %cmp.not.i = icmp ne ptr %7, %9
  %tobool.not129 = icmp eq ptr %7, null
  %tobool.not = or i1 %tobool.not129, %cmp.not.i
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %10 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 25
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool1.not = icmp eq ptr %12, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 28
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fbops = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 20
  %15 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fbops, align 4
  %fb_read = getelementptr inbounds %struct.fb_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %fb_read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fb_read, align 4
  %tobool5.not = icmp eq ptr %18, null
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call i32 %18(ptr noundef nonnull %7, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 26
  %19 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %screen_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp11 = icmp eq i32 %20, 0
  br i1 %cmp11, label %if.then13, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %smem_len, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %total_size.0 = phi i32 [ %22, %if.then13 ], [ %20, %if.end10.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %total_size.0, i32 %conv)
  %cmp15.not = icmp ugt i32 %total_size.0, %conv
  br i1 %cmp15.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %23 = tail call i32 @llvm.umin.i32(i32 %total_size.0, i32 %count)
  %add = add i32 %23, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %total_size.0)
  %cmp23 = icmp ugt i32 %add, %total_size.0
  %sub = sub i32 %total_size.0, %conv
  %count.addr.1 = select i1 %cmp23, i32 %sub, i32 %23
  %24 = tail call i32 @llvm.umin.i32(i32 %count.addr.1, i32 4096)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3264) #18
  %tobool30.not = icmp eq ptr %call9.i, null
  br i1 %tobool30.not, label %if.end18.cleanup_crit_edge, label %if.end32

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end32:                                         ; preds = %if.end18
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %10, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 %conv
  %27 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fb_sync, align 4
  %tobool34.not = icmp eq ptr %30, null
  br i1 %tobool34.not, label %if.end32.if.end39_crit_edge, label %if.then35

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %call38 = tail call i32 %30(ptr noundef nonnull %7) #14
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end32.if.end39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1)
  %tobool40.not132 = icmp eq i32 %count.addr.1, 0
  br i1 %tobool40.not132, label %if.end39.while.end_crit_edge, label %if.end39.while.body_crit_edge

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  br label %while.body

if.end39.while.end_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %if.end52.while.body_crit_edge, %if.end39.while.body_crit_edge
  %cnt.0136 = phi i32 [ %add56, %if.end52.while.body_crit_edge ], [ 0, %if.end39.while.body_crit_edge ]
  %src.0135 = phi ptr [ %add.ptr48, %if.end52.while.body_crit_edge ], [ %add.ptr, %if.end39.while.body_crit_edge ]
  %count.addr.2134 = phi i32 [ %sub57, %if.end52.while.body_crit_edge ], [ %count.addr.1, %if.end39.while.body_crit_edge ]
  %buf.addr.0133 = phi ptr [ %add.ptr55, %if.end52.while.body_crit_edge ], [ %buf, %if.end39.while.body_crit_edge ]
  %31 = tail call i32 @llvm.umin.i32(i32 %count.addr.2134, i32 4096)
  tail call void @mmiocpy(ptr noundef nonnull %call9.i, ptr noundef %src.0135, i32 noundef %31) #14
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %31, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %while.body.while.end_crit_edge, label %if.end.i.i121

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end.i.i121:                                    ; preds = %while.body
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0133, i32 %31, i32 -1226833920) #21, !srcloc !154
  %asmresult.i.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i121.while.end_crit_edge

if.end.i.i121.while.end_crit_edge:                ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

copy_to_user.exit:                                ; preds = %if.end.i.i121
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %31) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.0133, ptr noundef nonnull %call9.i, i32 noundef %31) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool50.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool50.not, label %if.end52, label %copy_to_user.exit.while.end_crit_edge

copy_to_user.exit.while.end_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end52:                                         ; preds = %copy_to_user.exit
  %add.ptr48 = getelementptr i8, ptr %src.0135, i32 %31
  %conv53127 = zext i32 %31 to i64
  %33 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ppos, align 8
  %add54 = add i64 %34, %conv53127
  store i64 %add54, ptr %ppos, align 8
  %add.ptr55 = getelementptr i8, ptr %buf.addr.0133, i32 %31
  %add56 = add i32 %cnt.0136, %31
  %sub57 = sub i32 %count.addr.2134, %31
  %tobool40.not = icmp eq i32 %sub57, 0
  br i1 %tobool40.not, label %if.end52.while.end_crit_edge, label %if.end52.while.body_crit_edge

if.end52.while.body_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end52.while.end_crit_edge, %copy_to_user.exit.while.end_crit_edge, %if.end.i.i121.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end39.while.end_crit_edge
  %cnt.0.err.0 = phi i32 [ 0, %if.end39.while.end_crit_edge ], [ %add56, %if.end52.while.end_crit_edge ], [ -14, %copy_to_user.exit.while.end_crit_edge ], [ -14, %while.body.while.end_crit_edge ], [ -14, %if.end.i.i121.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then6 ], [ %cnt.0.err.0, %while.end ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %1 to i32
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i.i, align 8
  %i_rdev.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %i_rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_rdev.i.i, align 8
  %and.i.i = and i32 %5, 1048575
  %arrayidx.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %and.i.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  %cmp.not.i = icmp ne ptr %7, %9
  %tobool.not135 = icmp eq ptr %7, null
  %tobool.not = or i1 %tobool.not135, %cmp.not.i
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %10 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 25
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool1.not = icmp eq ptr %12, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 28
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fbops = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 20
  %15 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fbops, align 4
  %fb_write = getelementptr inbounds %struct.fb_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %fb_write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fb_write, align 4
  %tobool5.not = icmp eq ptr %18, null
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call i32 %18(ptr noundef nonnull %7, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 26
  %19 = ptrtoint ptr %screen_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %screen_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp11 = icmp eq i32 %20, 0
  br i1 %cmp11, label %if.then13, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %smem_len, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %total_size.0 = phi i32 [ %22, %if.then13 ], [ %20, %if.end10.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %total_size.0, i32 %conv)
  %cmp15 = icmp ult i32 %total_size.0, %conv
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_cmp4(i32 %total_size.0, i32 %count)
  %cmp19 = icmp ult i32 %total_size.0, %count
  %spec.store.select = select i1 %cmp19, i32 -27, i32 -28
  %23 = tail call i32 @llvm.umin.i32(i32 %total_size.0, i32 %count)
  %err.0 = select i1 %cmp19, i32 -27, i32 0
  %add = add i32 %23, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %total_size.0)
  %cmp23 = icmp ugt i32 %add, %total_size.0
  %sub = sub i32 %total_size.0, %conv
  %count.addr.1 = select i1 %cmp23, i32 %sub, i32 %23
  %err.1 = select i1 %cmp23, i32 %spec.store.select, i32 %err.0
  %24 = tail call i32 @llvm.umin.i32(i32 %count.addr.1, i32 4096)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3264) #18
  %tobool33.not = icmp eq ptr %call9.i, null
  br i1 %tobool33.not, label %if.end18.cleanup_crit_edge, label %if.end35

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end35:                                         ; preds = %if.end18
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %10, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 %conv
  %27 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fb_sync, align 4
  %tobool37.not = icmp eq ptr %30, null
  br i1 %tobool37.not, label %if.end35.if.end42_crit_edge, label %if.then38

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %call41 = tail call i32 %30(ptr noundef nonnull %7) #14
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end35.if.end42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1)
  %tobool43.not144 = icmp eq i32 %count.addr.1, 0
  br i1 %tobool43.not144, label %while.end.thread, label %if.end42.while.body_crit_edge

if.end42.while.body_crit_edge:                    ; preds = %if.end42
  br label %while.body

while.end.thread:                                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %39

while.body:                                       ; preds = %if.end53.while.body_crit_edge, %if.end42.while.body_crit_edge
  %cnt.0148 = phi i32 [ %add59, %if.end53.while.body_crit_edge ], [ 0, %if.end42.while.body_crit_edge ]
  %dst.0147 = phi ptr [ %add.ptr54, %if.end53.while.body_crit_edge ], [ %add.ptr, %if.end42.while.body_crit_edge ]
  %count.addr.2146 = phi i32 [ %sub60, %if.end53.while.body_crit_edge ], [ %count.addr.1, %if.end42.while.body_crit_edge ]
  %buf.addr.0145 = phi ptr [ %add.ptr58, %if.end53.while.body_crit_edge ], [ %buf, %if.end42.while.body_crit_edge ]
  %31 = tail call i32 @llvm.umin.i32(i32 %count.addr.2146, i32 4096)
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %31, i1 noundef zeroext false) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %while.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

while.body.if.then11.i.i_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %while.body
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0145, i32 %31, i32 -1226833920) #21, !srcloc !155
  %asmresult.i.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i124, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !150

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i124:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef %31) #14
  %33 = tail call i32 @llvm.read_register.i32(metadata !135) #14
  %and.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !156
  %and.i.i.i.i = and i32 %35, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !158
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i, ptr noundef %buf.addr.0145, i32 noundef %31) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #14, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end53, label %if.end.i.i124.if.then11.i.i_crit_edge, !prof !150

if.end.i.i124.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i124
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i124.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %while.body.if.then11.i.i_crit_edge
  %res.0.i.i130 = phi i32 [ %call1.i.i.i, %if.end.i.i124.if.then11.i.i_crit_edge ], [ %31, %while.body.if.then11.i.i_crit_edge ], [ %31, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %31, %res.0.i.i130
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 %sub.i.i
  %36 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i130)
  br label %while.end

if.end53:                                         ; preds = %if.end.i.i124
  tail call void @mmiocpy(ptr noundef %dst.0147, ptr noundef nonnull %call9.i, i32 noundef %31) #14
  %add.ptr54 = getelementptr i8, ptr %dst.0147, i32 %31
  %conv56133 = zext i32 %31 to i64
  %37 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ppos, align 8
  %add57 = add i64 %38, %conv56133
  store i64 %add57, ptr %ppos, align 8
  %add.ptr58 = getelementptr i8, ptr %buf.addr.0145, i32 %31
  %add59 = add i32 %cnt.0148, %31
  %sub60 = sub i32 %count.addr.2146, %31
  %tobool43.not = icmp eq i32 %sub60, 0
  br i1 %tobool43.not, label %if.end53.while.end_crit_edge, label %if.end53.while.body_crit_edge

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end53.while.end_crit_edge, %if.then11.i.i
  %cnt.0138 = phi i32 [ %cnt.0148, %if.then11.i.i ], [ %add59, %if.end53.while.end_crit_edge ]
  %err.2 = phi i32 [ -14, %if.then11.i.i ], [ %err.1, %if.end53.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0138)
  %tobool61.not = icmp eq i32 %cnt.0138, 0
  br i1 %tobool61.not, label %while.end._crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.end._crit_edge:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %39

39:                                               ; preds = %while.end._crit_edge, %while.end.thread
  %err.2159 = phi i32 [ %err.1, %while.end.thread ], [ %err.2, %while.end._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %39, %while.end.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then6 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -27, %if.end14.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ], [ %err.2159, %39 ], [ %cnt.0138, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  %blank.addr.i.i = alloca i32, align 4
  %event.i.i = alloca %struct.fb_event, align 4
  %var.i = alloca %struct.fb_var_screeninfo, align 4
  %fix.i = alloca %struct.fb_fix_screeninfo, align 4
  %cmap_from.i = alloca %struct.fb_cmap, align 4
  %cmap.i = alloca %struct.fb_cmap_user, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_rdev.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i.i, align 8
  %and.i.i = and i32 %3, 1048575
  %arrayidx.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %and.i.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  %cmp.not.i = icmp ne ptr %5, %7
  %tobool.not3 = icmp eq ptr %5, null
  %tobool.not = or i1 %tobool.not3, %cmp.not.i
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var.i) #14
  %8 = call ptr @memset(ptr %var.i, i32 255, i32 160)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %fix.i) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmap_from.i) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmap.i) #14
  %9 = inttoptr i32 %arg to ptr
  %10 = call ptr @memset(ptr %cmap.i, i32 255, i32 24)
  %11 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %cmd, label %sw.default.i [
    i32 17920, label %sw.bb.i
    i32 17921, label %if.end59.i.i115.i
    i32 17922, label %sw.bb15.i
    i32 17925, label %if.end59.i.i151.i
    i32 17924, label %if.end59.i.i174.i
    i32 17926, label %if.end59.i.i197.i
    i32 -1069005304, label %if.end.sw.epilog.i_crit_edge
    i32 17935, label %sw.bb49.i
    i32 17936, label %sw.bb51.i
    i32 17937, label %sw.bb53.i
  ]

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end
  %lock.i.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #14
  %var1.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6
  %12 = call ptr @memcpy(ptr %var.i, ptr %var1.i, i32 160)
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #14
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %if.end.i.i.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end.i.i.i:                                     ; preds = %sw.bb.i
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 160, i32 -1226833920) #21, !srcloc !154
  %asmresult.i.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.sw.epilog.i_crit_edge

if.end.i.i.i.sw.epilog.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %var.i, i32 noundef 160) #14
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %var.i, i32 noundef 160) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %sw.epilog.i

if.end59.i.i115.i:                                ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #14
  %call.i.i116.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i116.i, label %if.end59.i.i115.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i115.i.if.then11.i.i.i_crit_edge:      ; preds = %if.end59.i.i115.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i115.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 160, i32 -1226833920) #21
  %asmresult.i.i117.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i117.i)
  %cmp.i6.i118.i = icmp eq i32 %asmresult.i.i117.i, 0
  br i1 %cmp.i6.i118.i, label %if.end.i.i120.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !150

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.end.i.i120.i:                                  ; preds = %land.lhs.true.i.i.i
  %call.i.i.i119.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %var.i, i32 noundef 160) #14
  %15 = call i32 @llvm.read_register.i32(metadata !135) #14
  %and.i.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #12, !srcloc !156
  %and.i.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #14, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !158
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %var.i, ptr noundef %9, i32 noundef 160) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #14, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i120.i.if.then11.i.i.i_crit_edge, !prof !150

if.end.i.i120.i.if.then11.i.i.i_crit_edge:        ; preds = %if.end.i.i120.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i120.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i115.i.if.then11.i.i.i_crit_edge
  %res.0.i.i248.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i120.i.if.then11.i.i.i_crit_edge ], [ 160, %if.end59.i.i115.i.if.then11.i.i.i_crit_edge ], [ 160, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 160, %res.0.i.i248.i
  %add.ptr.i.i.i = getelementptr i8, ptr %var.i, i32 %sub.i.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i248.i)
  br label %do_fb_ioctl.exit

if.end.i:                                         ; preds = %if.end.i.i120.i
  call void @console_lock() #14
  %lock.i231.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i231.i, i32 noundef 0) #14
  %call5.i = call i32 @fb_set_var(ptr noundef nonnull %5, ptr noundef nonnull %var.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end59.i.i125.i, label %sw.epilog.critedge.i

if.end59.i.i125.i:                                ; preds = %if.end.i
  %activate.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var.i, i32 0, i32 13
  %19 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %activate.i, align 4
  %and.i = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.i = icmp ne i32 %and.i, 0
  call void @fbcon_update_vcs(ptr noundef nonnull %5, i1 noundef zeroext %tobool8.i) #14
  call void @mutex_unlock(ptr noundef %lock.i231.i) #14
  call void @console_unlock() #14
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #14
  %call.i.i126.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i126.i, label %if.end59.i.i125.i.sw.epilog.i_crit_edge, label %copy_to_user.exit134.i

if.end59.i.i125.i.sw.epilog.i_crit_edge:          ; preds = %if.end59.i.i125.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

copy_to_user.exit134.i:                           ; preds = %if.end59.i.i125.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i130.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %var.i, i32 noundef 160) #14
  %call.i12.i.i131.i = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %var.i, i32 noundef 160) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i131.i)
  %tobool12.not.i = icmp eq i32 %call.i12.i.i131.i, 0
  %spec.select272.i = select i1 %tobool12.not.i, i32 0, i32 -14
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.end
  %lock.i233.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i233.i, i32 noundef 0) #14
  %fix16.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7
  %21 = call ptr @memcpy(ptr %fix.i, ptr %fix16.i, i32 68)
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and17.i = and i32 %23, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %sw.bb15.i.if.end20.i_crit_edge, label %if.then19.i

sw.bb15.i.if.end20.i_crit_edge:                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.then19.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #16
  %smem_start.i = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %fix.i, i32 0, i32 1
  %24 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %smem_start.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %sw.bb15.i.if.end20.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i233.i) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #14
  %call.i.i139.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i139.i, label %if.end20.i.sw.epilog.i_crit_edge, label %if.end.i.i142.i

if.end20.i.sw.epilog.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end.i.i142.i:                                  ; preds = %if.end20.i
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 68, i32 -1226833920) #21, !srcloc !154
  %asmresult.i.i140.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i140.i)
  %cmp.i6.i141.i = icmp eq i32 %asmresult.i.i140.i, 0
  br i1 %cmp.i6.i141.i, label %copy_to_user.exit147.i, label %if.end.i.i142.i.sw.epilog.i_crit_edge

if.end.i.i142.i.sw.epilog.i_crit_edge:            ; preds = %if.end.i.i142.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

copy_to_user.exit147.i:                           ; preds = %if.end.i.i142.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i143.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %fix.i, i32 noundef 68) #14
  %call.i12.i.i144.i = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %fix.i, i32 noundef 68) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i144.i)
  %tobool22.not.i = icmp eq i32 %call.i12.i.i144.i, 0
  %spec.select273.i = select i1 %tobool22.not.i, i32 0, i32 -14
  br label %sw.epilog.i

if.end59.i.i151.i:                                ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #14
  %call.i.i152.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i152.i, label %if.end59.i.i151.i.if.then11.i.i168.i_crit_edge, label %land.lhs.true.i.i155.i

if.end59.i.i151.i.if.then11.i.i168.i_crit_edge:   ; preds = %if.end59.i.i151.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i168.i

land.lhs.true.i.i155.i:                           ; preds = %if.end59.i.i151.i
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 24, i32 -1226833920) #21, !srcloc !155
  %asmresult.i.i153.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i153.i)
  %cmp.i6.i154.i = icmp eq i32 %asmresult.i.i153.i, 0
  br i1 %cmp.i6.i154.i, label %if.end.i.i165.i, label %land.lhs.true.i.i155.i.if.then11.i.i168.i_crit_edge, !prof !150

land.lhs.true.i.i155.i.if.then11.i.i168.i_crit_edge: ; preds = %land.lhs.true.i.i155.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i168.i

if.end.i.i165.i:                                  ; preds = %land.lhs.true.i.i155.i
  %call.i.i.i156.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmap.i, i32 noundef 24) #14
  %27 = call i32 @llvm.read_register.i32(metadata !135) #14
  %and.i.i.i.i.i.i157.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i157.i to ptr
  %cpu_domain.i.i.i.i.i158.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i158.i) #12, !srcloc !156
  %and.i.i.i.i159.i = and i32 %29, -13
  %or.i.i.i.i160.i = or i32 %and.i.i.i.i159.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i160.i) #14, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !158
  %call1.i.i.i161.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmap.i, ptr noundef %9, i32 noundef 24) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #14, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i161.i)
  %tobool4.not.i.i164.i = icmp eq i32 %call1.i.i.i161.i, 0
  br i1 %tobool4.not.i.i164.i, label %if.end28.i, label %if.end.i.i165.i.if.then11.i.i168.i_crit_edge, !prof !150

if.end.i.i165.i.if.then11.i.i168.i_crit_edge:     ; preds = %if.end.i.i165.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i168.i

if.then11.i.i168.i:                               ; preds = %if.end.i.i165.i.if.then11.i.i168.i_crit_edge, %land.lhs.true.i.i155.i.if.then11.i.i168.i_crit_edge, %if.end59.i.i151.i.if.then11.i.i168.i_crit_edge
  %res.0.i.i163257.i = phi i32 [ %call1.i.i.i161.i, %if.end.i.i165.i.if.then11.i.i168.i_crit_edge ], [ 24, %if.end59.i.i151.i.if.then11.i.i168.i_crit_edge ], [ 24, %land.lhs.true.i.i155.i.if.then11.i.i168.i_crit_edge ]
  %sub.i.i166.i = sub i32 24, %res.0.i.i163257.i
  %add.ptr.i.i167.i = getelementptr i8, ptr %cmap.i, i32 %sub.i.i166.i
  %30 = call ptr @memset(ptr %add.ptr.i.i167.i, i32 0, i32 %res.0.i.i163257.i)
  br label %do_fb_ioctl.exit

if.end28.i:                                       ; preds = %if.end.i.i165.i
  call void @__sanitizer_cov_trace_pc() #16
  %call29.i = call i32 @fb_set_user_cmap(ptr noundef nonnull %cmap.i, ptr noundef nonnull %5) #14
  br label %sw.epilog.i

if.end59.i.i174.i:                                ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #14
  %call.i.i175.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i175.i, label %if.end59.i.i174.i.if.then11.i.i191.i_crit_edge, label %land.lhs.true.i.i178.i

if.end59.i.i174.i.if.then11.i.i191.i_crit_edge:   ; preds = %if.end59.i.i174.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i191.i

land.lhs.true.i.i178.i:                           ; preds = %if.end59.i.i174.i
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 24, i32 -1226833920) #21, !srcloc !155
  %asmresult.i.i176.i = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i176.i)
  %cmp.i6.i177.i = icmp eq i32 %asmresult.i.i176.i, 0
  br i1 %cmp.i6.i177.i, label %if.end.i.i188.i, label %land.lhs.true.i.i178.i.if.then11.i.i191.i_crit_edge, !prof !150

land.lhs.true.i.i178.i.if.then11.i.i191.i_crit_edge: ; preds = %land.lhs.true.i.i178.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i191.i

if.end.i.i188.i:                                  ; preds = %land.lhs.true.i.i178.i
  %call.i.i.i179.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmap.i, i32 noundef 24) #14
  %32 = call i32 @llvm.read_register.i32(metadata !135) #14
  %and.i.i.i.i.i.i180.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i180.i to ptr
  %cpu_domain.i.i.i.i.i181.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i181.i) #12, !srcloc !156
  %and.i.i.i.i182.i = and i32 %34, -13
  %or.i.i.i.i183.i = or i32 %and.i.i.i.i182.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i183.i) #14, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !158
  %call1.i.i.i184.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmap.i, ptr noundef %9, i32 noundef 24) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #14, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i184.i)
  %tobool4.not.i.i187.i = icmp eq i32 %call1.i.i.i184.i, 0
  br i1 %tobool4.not.i.i187.i, label %if.end34.i, label %if.end.i.i188.i.if.then11.i.i191.i_crit_edge, !prof !150

if.end.i.i188.i.if.then11.i.i191.i_crit_edge:     ; preds = %if.end.i.i188.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i191.i

if.then11.i.i191.i:                               ; preds = %if.end.i.i188.i.if.then11.i.i191.i_crit_edge, %land.lhs.true.i.i178.i.if.then11.i.i191.i_crit_edge, %if.end59.i.i174.i.if.then11.i.i191.i_crit_edge
  %res.0.i.i186262.i = phi i32 [ %call1.i.i.i184.i, %if.end.i.i188.i.if.then11.i.i191.i_crit_edge ], [ 24, %if.end59.i.i174.i.if.then11.i.i191.i_crit_edge ], [ 24, %land.lhs.true.i.i178.i.if.then11.i.i191.i_crit_edge ]
  %sub.i.i189.i = sub i32 24, %res.0.i.i186262.i
  %add.ptr.i.i190.i = getelementptr i8, ptr %cmap.i, i32 %sub.i.i189.i
  %35 = call ptr @memset(ptr %add.ptr.i.i190.i, i32 0, i32 %res.0.i.i186262.i)
  br label %do_fb_ioctl.exit

if.end34.i:                                       ; preds = %if.end.i.i188.i
  call void @__sanitizer_cov_trace_pc() #16
  %lock.i235.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i235.i, i32 noundef 0) #14
  %cmap35.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 12
  %36 = call ptr @memcpy(ptr %cmap_from.i, ptr %cmap35.i, i32 24)
  call void @mutex_unlock(ptr noundef %lock.i235.i) #14
  %call36.i = call i32 @fb_cmap_to_user(ptr noundef nonnull %cmap_from.i, ptr noundef nonnull %cmap.i) #14
  br label %sw.epilog.i

if.end59.i.i197.i:                                ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #14
  %call.i.i198.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i198.i, label %if.end59.i.i197.i.if.then11.i.i214.i_crit_edge, label %land.lhs.true.i.i201.i

if.end59.i.i197.i.if.then11.i.i214.i_crit_edge:   ; preds = %if.end59.i.i197.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i214.i

land.lhs.true.i.i201.i:                           ; preds = %if.end59.i.i197.i
  %37 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 160, i32 -1226833920) #21
  %asmresult.i.i199.i = extractvalue { i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i199.i)
  %cmp.i6.i200.i = icmp eq i32 %asmresult.i.i199.i, 0
  br i1 %cmp.i6.i200.i, label %if.end.i.i211.i, label %land.lhs.true.i.i201.i.if.then11.i.i214.i_crit_edge, !prof !150

land.lhs.true.i.i201.i.if.then11.i.i214.i_crit_edge: ; preds = %land.lhs.true.i.i201.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i214.i

if.end.i.i211.i:                                  ; preds = %land.lhs.true.i.i201.i
  %call.i.i.i202.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %var.i, i32 noundef 160) #14
  %38 = call i32 @llvm.read_register.i32(metadata !135) #14
  %and.i.i.i.i.i.i203.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i203.i to ptr
  %cpu_domain.i.i.i.i.i204.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i204.i) #12, !srcloc !156
  %and.i.i.i.i205.i = and i32 %40, -13
  %or.i.i.i.i206.i = or i32 %and.i.i.i.i205.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i206.i) #14, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !158
  %call1.i.i.i207.i = call i32 @arm_copy_from_user(ptr noundef nonnull %var.i, ptr noundef %9, i32 noundef 160) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #14, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i207.i)
  %tobool4.not.i.i210.i = icmp eq i32 %call1.i.i.i207.i, 0
  br i1 %tobool4.not.i.i210.i, label %if.end41.i, label %if.end.i.i211.i.if.then11.i.i214.i_crit_edge, !prof !150

if.end.i.i211.i.if.then11.i.i214.i_crit_edge:     ; preds = %if.end.i.i211.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i214.i

if.then11.i.i214.i:                               ; preds = %if.end.i.i211.i.if.then11.i.i214.i_crit_edge, %land.lhs.true.i.i201.i.if.then11.i.i214.i_crit_edge, %if.end59.i.i197.i.if.then11.i.i214.i_crit_edge
  %res.0.i.i209267.i = phi i32 [ %call1.i.i.i207.i, %if.end.i.i211.i.if.then11.i.i214.i_crit_edge ], [ 160, %if.end59.i.i197.i.if.then11.i.i214.i_crit_edge ], [ 160, %land.lhs.true.i.i201.i.if.then11.i.i214.i_crit_edge ]
  %sub.i.i212.i = sub i32 160, %res.0.i.i209267.i
  %add.ptr.i.i213.i = getelementptr i8, ptr %var.i, i32 %sub.i.i212.i
  %41 = call ptr @memset(ptr %add.ptr.i.i213.i, i32 0, i32 %res.0.i.i209267.i)
  br label %do_fb_ioctl.exit

if.end41.i:                                       ; preds = %if.end.i.i211.i
  call void @console_lock() #14
  %lock.i237.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i237.i, i32 noundef 0) #14
  %call42.i = call i32 @fb_pan_display(ptr noundef nonnull %5, ptr noundef nonnull %var.i) #14
  call void @mutex_unlock(ptr noundef %lock.i237.i) #14
  call void @console_unlock() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp.i = icmp eq i32 %call42.i, 0
  br i1 %cmp.i, label %if.end59.i.i220.i, label %if.end41.i.sw.epilog.i_crit_edge

if.end41.i.sw.epilog.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end59.i.i220.i:                                ; preds = %if.end41.i
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #14
  %call.i.i221.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i221.i, label %if.end59.i.i220.i.do_fb_ioctl.exit_crit_edge, label %copy_to_user.exit229.i

if.end59.i.i220.i.do_fb_ioctl.exit_crit_edge:     ; preds = %if.end59.i.i220.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do_fb_ioctl.exit

copy_to_user.exit229.i:                           ; preds = %if.end59.i.i220.i
  %call.i.i.i225.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %var.i, i32 noundef 160) #14
  %call.i12.i.i226.i = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %var.i, i32 noundef 160) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i226.i)
  %tobool45.not.i = icmp eq i32 %call.i12.i.i226.i, 0
  br i1 %tobool45.not.i, label %copy_to_user.exit229.i.sw.epilog.i_crit_edge, label %copy_to_user.exit229.i.do_fb_ioctl.exit_crit_edge

copy_to_user.exit229.i.do_fb_ioctl.exit_crit_edge: ; preds = %copy_to_user.exit229.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do_fb_ioctl.exit

copy_to_user.exit229.i.sw.epilog.i_crit_edge:     ; preds = %copy_to_user.exit229.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb49.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call50.i = tail call i32 @fbcon_get_con2fb_map_ioctl(ptr noundef %9) #14
  br label %sw.epilog.i

sw.bb51.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call52.i = tail call i32 @fbcon_set_con2fb_map_ioctl(ptr noundef %9) #14
  br label %sw.epilog.i

sw.bb53.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %arg)
  %cmp54.i = icmp ugt i32 %arg, 4
  br i1 %cmp54.i, label %sw.bb53.i.do_fb_ioctl.exit_crit_edge, label %if.end.i.i

sw.bb53.i.do_fb_ioctl.exit_crit_edge:             ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do_fb_ioctl.exit

if.end.i.i:                                       ; preds = %sw.bb53.i
  tail call void @console_lock() #14
  %lock.i239.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i239.i, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blank.addr.i.i) #14
  %42 = ptrtoint ptr %blank.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %arg, ptr %blank.addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event.i.i) #14
  %43 = getelementptr inbounds %struct.fb_event, ptr %event.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %event.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %5, ptr %event.i.i, align 4
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %blank.addr.i.i, ptr %43, align 4
  %fbops.i.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 20
  %46 = ptrtoint ptr %fbops.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fbops.i.i, align 4
  %fb_blank.i.i = getelementptr inbounds %struct.fb_ops, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fb_blank.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %if.end.i.i.fb_blank.exit.i_crit_edge, label %if.end5.i.i

if.end.i.i.fb_blank.exit.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_blank.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call.i.i = call i32 %49(i32 noundef %arg, ptr noundef nonnull %5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end5.i.i.fb_blank.exit.i_crit_edge

if.end5.i.i.fb_blank.exit.i_crit_edge:            ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fb_blank.exit.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call8.i.i = call i32 @fb_notifier_call_chain(i32 noundef 9, ptr noundef nonnull %event.i.i) #14
  br label %fb_blank.exit.i

fb_blank.exit.i:                                  ; preds = %if.then7.i.i, %if.end5.i.i.fb_blank.exit.i_crit_edge, %if.end.i.i.fb_blank.exit.i_crit_edge
  %ret.016.i.i = phi i32 [ 0, %if.then7.i.i ], [ %call.i.i, %if.end5.i.i.fb_blank.exit.i_crit_edge ], [ -22, %if.end.i.i.fb_blank.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blank.addr.i.i) #14
  call void @fbcon_fb_blanked(ptr noundef nonnull %5, i32 noundef %arg) #14
  call void @mutex_unlock(ptr noundef %lock.i239.i) #14
  call void @console_unlock() #14
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end
  %lock.i241.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i241.i, i32 noundef 0) #14
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 20
  %50 = ptrtoint ptr %fbops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fbops.i, align 4
  %fb_ioctl.i = getelementptr inbounds %struct.fb_ops, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %fb_ioctl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fb_ioctl.i, align 4
  %tobool58.not.i = icmp eq ptr %53, null
  br i1 %tobool58.not.i, label %sw.default.i.if.end62.i_crit_edge, label %if.then59.i

sw.default.i.if.end62.i_crit_edge:                ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62.i

if.then59.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #16
  %call61.i = tail call i32 %53(ptr noundef nonnull %5, i32 noundef %cmd, i32 noundef %arg) #14
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then59.i, %sw.default.i.if.end62.i_crit_edge
  %ret.0.i = phi i32 [ %call61.i, %if.then59.i ], [ -25, %sw.default.i.if.end62.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i241.i) #14
  br label %sw.epilog.i

sw.epilog.critedge.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %lock.i231.i) #14
  call void @console_unlock() #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.critedge.i, %if.end62.i, %fb_blank.exit.i, %sw.bb51.i, %sw.bb49.i, %copy_to_user.exit229.i.sw.epilog.i_crit_edge, %if.end41.i.sw.epilog.i_crit_edge, %if.end34.i, %if.end28.i, %copy_to_user.exit147.i, %if.end.i.i142.i.sw.epilog.i_crit_edge, %if.end20.i.sw.epilog.i_crit_edge, %copy_to_user.exit134.i, %if.end59.i.i125.i.sw.epilog.i_crit_edge, %copy_to_user.exit.i, %if.end.i.i.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %if.end.sw.epilog.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %if.end62.i ], [ %ret.016.i.i, %fb_blank.exit.i ], [ %call52.i, %sw.bb51.i ], [ %call50.i, %sw.bb49.i ], [ 0, %copy_to_user.exit229.i.sw.epilog.i_crit_edge ], [ %call42.i, %if.end41.i.sw.epilog.i_crit_edge ], [ %call36.i, %if.end34.i ], [ %call29.i, %if.end28.i ], [ %call5.i, %sw.epilog.critedge.i ], [ -22, %if.end.sw.epilog.i_crit_edge ], [ -14, %sw.bb.i.sw.epilog.i_crit_edge ], [ -14, %if.end.i.i.i.sw.epilog.i_crit_edge ], [ -14, %if.end59.i.i125.i.sw.epilog.i_crit_edge ], [ -14, %if.end20.i.sw.epilog.i_crit_edge ], [ -14, %if.end.i.i142.i.sw.epilog.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ], [ %spec.select272.i, %copy_to_user.exit134.i ], [ %spec.select273.i, %copy_to_user.exit147.i ]
  br label %do_fb_ioctl.exit

do_fb_ioctl.exit:                                 ; preds = %sw.epilog.i, %sw.bb53.i.do_fb_ioctl.exit_crit_edge, %copy_to_user.exit229.i.do_fb_ioctl.exit_crit_edge, %if.end59.i.i220.i.do_fb_ioctl.exit_crit_edge, %if.then11.i.i214.i, %if.then11.i.i191.i, %if.then11.i.i168.i, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %ret.1.i, %sw.epilog.i ], [ -14, %copy_to_user.exit229.i.do_fb_ioctl.exit_crit_edge ], [ -22, %sw.bb53.i.do_fb_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then11.i.i168.i ], [ -14, %if.then11.i.i191.i ], [ -14, %if.then11.i.i214.i ], [ -14, %if.end59.i.i220.i.do_fb_ioctl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmap.i) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmap_from.i) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %fix.i) #14
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var.i) #14
  br label %cleanup

cleanup:                                          ; preds = %do_fb_ioctl.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do_fb_ioctl.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %i_rdev.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i.i, align 8
  %and.i.i = and i32 %3, 1048575
  %arrayidx.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %and.i.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  %cmp.not.i = icmp ne ptr %5, %7
  %tobool.not56 = icmp eq ptr %5, null
  %tobool.not = or i1 %tobool.not56, %cmp.not.i
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %mm_lock = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mm_lock, i32 noundef 0) #14
  %fbops = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fbops, align 4
  %fb_mmap = getelementptr inbounds %struct.fb_ops, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %fb_mmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb_mmap, align 4
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 19
  %12 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fbdefio, align 4
  %tobool1.not = icmp eq ptr %13, null
  %spec.store.select = select i1 %tobool1.not, ptr %11, ptr @fb_deferred_io_mmap
  %tobool4.not = icmp eq ptr %spec.store.select, null
  br i1 %tobool4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 %spec.store.select(ptr noundef nonnull %5, ptr noundef %vma) #14
  tail call void @mutex_unlock(ptr noundef %mm_lock) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smem_len, align 4
  %and = and i32 %15, 4095
  %add = add i32 %17, 4095
  %add11 = add i32 %add, %and
  %shr = lshr i32 %add11, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %18 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %shr)
  %cmp.not = icmp ult i32 %19, %shr
  br i1 %cmp.not, label %if.end9.if.end21_crit_edge, label %if.then13

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then13:                                        ; preds = %if.end9
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 16
  %20 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %accel_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not = icmp eq i32 %21, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %mm_lock) #14
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i32 %19, %shr
  %22 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %vm_pgoff, align 4
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7, i32 10
  %23 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mmio_start, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7, i32 11
  %25 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mmio_len, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.end9.if.end21_crit_edge
  %start.0 = phi i32 [ %24, %if.end17 ], [ %15, %if.end9.if.end21_crit_edge ]
  %len.0 = phi i32 [ %26, %if.end17 ], [ %17, %if.end9.if.end21_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mm_lock) #14
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %27 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vm_flags, align 4
  %call23 = tail call i32 @vm_get_page_prot(i32 noundef %28) #14
  %vm_page_prot24 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %and.i = and i32 %call23, -61
  %or.i = or i32 %and.i, 4
  %29 = ptrtoint ptr %vm_page_prot24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %vm_page_prot24, align 4
  %call25 = tail call i32 @vm_iomap_memory(ptr noundef %vma, i32 noundef %start.0, i32 noundef %len.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then15, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then5 ], [ -22, %if.then15 ], [ %call25, %if.end21 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 31
  br i1 %cmp.i, label %entry.if.then8_crit_edge, label %if.end.i

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.end.i:                                         ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @registration_lock, i32 noundef 0) #14
  %arrayidx.i = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %and.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i57, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then1.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !146

if.then1.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then1.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end6_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !150

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end6_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then1.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then1.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef %.sink.i.i.i.i) #14
  br label %if.end6

if.end.i57:                                       ; preds = %if.end.i
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #14
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.15, i32 noundef %and.i) #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @registration_lock, i32 noundef 0) #14
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i56 = icmp eq ptr %7, null
  br i1 %tobool.not.i56, label %get_fb_info.exit69, label %if.then1.i61

if.then1.i61:                                     ; preds = %if.end.i57
  %call.i.i.i.i.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #14, !srcloc !159
  %asmresult.i.i.i.i.i.i59 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i59)
  %tobool1.not.i.i.i.i60 = icmp eq i32 %asmresult.i.i.i.i.i.i59, 0
  br i1 %tobool1.not.i.i.i.i60, label %if.then1.i61.if.end15.sink.split.i.i.i.i66_crit_edge, label %if.else.i.i.i.i64, !prof !146

if.then1.i61.if.end15.sink.split.i.i.i.i66_crit_edge: ; preds = %if.then1.i61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i66

if.else.i.i.i.i64:                                ; preds = %if.then1.i61
  %add.i.i.i.i62 = add i32 %asmresult.i.i.i.i.i.i59, 1
  %9 = or i32 %add.i.i.i.i62, %asmresult.i.i.i.i.i.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i63 = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i63, label %if.else.i.i.i.i64.if.end6_crit_edge, label %if.else.i.i.i.i64.if.end15.sink.split.i.i.i.i66_crit_edge, !prof !150

if.else.i.i.i.i64.if.end15.sink.split.i.i.i.i66_crit_edge: ; preds = %if.else.i.i.i.i64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i66

if.else.i.i.i.i64.if.end6_crit_edge:              ; preds = %if.else.i.i.i.i64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end15.sink.split.i.i.i.i66:                    ; preds = %if.else.i.i.i.i64.if.end15.sink.split.i.i.i.i66_crit_edge, %if.then1.i61.if.end15.sink.split.i.i.i.i66_crit_edge
  %.sink.i.i.i.i65 = phi i32 [ 2, %if.then1.i61.if.end15.sink.split.i.i.i.i66_crit_edge ], [ 1, %if.else.i.i.i.i64.if.end15.sink.split.i.i.i.i66_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef %.sink.i.i.i.i65) #14
  br label %if.end6

get_fb_info.exit69:                               ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end15.sink.split.i.i.i.i66, %if.else.i.i.i.i64.if.end6_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end6_crit_edge
  %info.0 = phi ptr [ %3, %if.else.i.i.i.i.if.end6_crit_edge ], [ %3, %if.end15.sink.split.i.i.i.i ], [ %7, %if.else.i.i.i.i64.if.end6_crit_edge ], [ %7, %if.end15.sink.split.i.i.i.i66 ]
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #14
  %cmp.i70 = icmp ugt ptr %info.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.end6.if.then8_crit_edge, label %if.end10

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.then8:                                         ; preds = %if.end6.if.then8_crit_edge, %entry.if.then8_crit_edge
  %info.085 = phi ptr [ %info.0, %if.end6.if.then8_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.if.then8_crit_edge ]
  %10 = ptrtoint ptr %info.085 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %lock.i = getelementptr inbounds %struct.fb_info, ptr %info.0, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #14
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info.0, i32 0, i32 20
  %11 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fbops, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call11 = tail call zeroext i1 @try_module_get(ptr noundef %14) #14
  br i1 %call11, label %if.end13, label %out.thread

out.thread:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %lock.i) #14
  br label %if.then30

if.end13:                                         ; preds = %if.end10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %info.0, ptr %private_data, align 4
  %16 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fbops, align 4
  %fb_open = getelementptr inbounds %struct.fb_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %fb_open to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fb_open, align 4
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %if.end13.if.end25_crit_edge, label %if.then16

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then16:                                        ; preds = %if.end13
  %call19 = tail call i32 %19(ptr noundef nonnull %info.0, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then16.if.end25_crit_edge, label %if.then21

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fbops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void @module_put(ptr noundef %23) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.then16.if.end25_crit_edge, %if.end13.if.end25_crit_edge
  %res.0 = phi i32 [ %call19, %if.then21 ], [ 0, %if.then16.if.end25_crit_edge ], [ 0, %if.end13.if.end25_crit_edge ]
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %info.0, i32 0, i32 19
  %24 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fbdefio, align 4
  %tobool26.not = icmp eq ptr %25, null
  br i1 %tobool26.not, label %if.end25.out_crit_edge, label %if.then27

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @fb_deferred_io_open(ptr noundef nonnull %info.0, ptr noundef %inode, ptr noundef %file) #14
  br label %out

out:                                              ; preds = %if.then27, %if.end25.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0)
  %tobool29.not = icmp eq i32 %res.0, 0
  br i1 %tobool29.not, label %out.cleanup_crit_edge, label %out.if.then30_crit_edge

out.if.then30_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then30:                                        ; preds = %out.if.then30_crit_edge, %out.thread
  %res.191 = phi i32 [ -19, %out.thread ], [ %res.0, %out.if.then30_crit_edge ]
  %call.i.i.i.i.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info.0, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr nonnull %info.0, i32 1, i32 3, i32 1) #14
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %info.0, ptr nonnull %info.0, i32 1, ptr nonnull elementtype(i32) %info.0) #14, !srcloc !152
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i75, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i73 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i73, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !150

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %info.0, i32 noundef 3) #14
  br label %cleanup

if.end.i75:                                       ; preds = %if.then30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !153
  %27 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fbops, align 4
  %fb_destroy.i = getelementptr inbounds %struct.fb_ops, ptr %28, i32 0, i32 20
  %29 = ptrtoint ptr %fb_destroy.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fb_destroy.i, align 4
  %tobool.not.i74 = icmp eq ptr %30, null
  br i1 %tobool.not.i74, label %if.end.i75.cleanup_crit_edge, label %if.then1.i76

if.end.i75.cleanup_crit_edge:                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then1.i76:                                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %30(ptr noundef nonnull %info.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then1.i76, %if.end.i75.cleanup_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %out.cleanup_crit_edge, %if.then8, %get_fb_info.exit69
  %retval.0 = phi i32 [ %10, %if.then8 ], [ -19, %get_fb_info.exit69 ], [ 0, %out.cleanup_crit_edge ], [ %res.191, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %res.191, %if.then10.i.i.i.i ], [ %res.191, %if.end.i75.cleanup_crit_edge ], [ %res.191, %if.then1.i76 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fb_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #14
  %fbops = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbops, align 4
  %fb_release = getelementptr inbounds %struct.fb_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fb_release to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb_release, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 %5(ptr noundef %1, i32 noundef 1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @module_put(ptr noundef %9) #14
  tail call void @mutex_unlock(ptr noundef %lock.i) #14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #14, !srcloc !152
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_fb_info.exit_crit_edge, label %if.then10.i.i.i.i, !prof !150

if.end5.i.i.i.i.put_fb_info.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_fb_info.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #14
  br label %put_fb_info.exit

if.end.i:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !153
  %11 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fbops, align 4
  %fb_destroy.i = getelementptr inbounds %struct.fb_ops, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %fb_destroy.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fb_destroy.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i.put_fb_info.exit_crit_edge, label %if.then1.i

if.end.i.put_fb_info.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_fb_info.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %14(ptr noundef %1) #14
  br label %put_fb_info.exit

put_fb_info.exit:                                 ; preds = %if.then1.i, %if.end.i.put_fb_info.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_fb_info.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_deferred_io_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_update_vcs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_user_cmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_cmap_to_user(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbcon_get_con2fb_map_ioctl(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbcon_set_con2fb_map_ioctl(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_fb_blanked(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_deferred_io_mmap(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_iomap_memory(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !120, !121, !122, !124, !126, !128, !130, !131, !133}
!llvm.named.register.sp = !{!135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__ksymtab_registered_fb, !1, !"__ksymtab_registered_fb", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 51, i32 1}
!2 = !{ptr @__ksymtab_num_registered_fb, !3, !"__ksymtab_num_registered_fb", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 54, i32 1}
!4 = !{ptr @fb_logo_count, !5, !"fb_logo_count", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 58, i32 5}
!6 = !{ptr @__ksymtab_fb_get_color_depth, !7, !"__ksymtab_fb_get_color_depth", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 109, i32 1}
!8 = !{ptr @__ksymtab_fb_pad_aligned_buffer, !9, !"__ksymtab_fb_pad_aligned_buffer", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 118, i32 1}
!10 = !{ptr @__ksymtab_fb_pad_unaligned_buffer, !11, !"__ksymtab_fb_pad_unaligned_buffer", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 148, i32 1}
!12 = !{ptr @__ksymtab_fb_get_buffer_offset, !13, !"__ksymtab_fb_get_buffer_offset", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 185, i32 1}
!14 = !{ptr @__ksymtab_fb_prepare_logo, !15, !"__ksymtab_fb_prepare_logo", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 706, i32 1}
!16 = !{ptr @__ksymtab_fb_show_logo, !17, !"__ksymtab_fb_show_logo", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 707, i32 1}
!18 = !{ptr @__ksymtab_fb_pan_display, !19, !"__ksymtab_fb_pan_display", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 935, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1040, i32 4}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @fb_set_var._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @fb_set_var._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_fb_set_var, !27, !"__ksymtab_fb_set_var", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1064, i32 1}
!28 = !{ptr @__ksymtab_fb_blank, !29, !"__ksymtab_fb_blank", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1086, i32 1}
!30 = !{ptr @__ksymtab_fb_class, !31, !"__ksymtab_fb_class", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1489, i32 1}
!32 = !{ptr @__param_lockless_register_fb, !33, !"__param_lockless_register_fb", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1579, i32 1}
!34 = !{ptr @__UNIQUE_ID_lockless_register_fbtype305, !33, !"__UNIQUE_ID_lockless_register_fbtype305", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_lockless_register_fb306, !36, !"__UNIQUE_ID_lockless_register_fb306", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1580, i32 1}
!37 = !{ptr @__ksymtab_remove_conflicting_framebuffers, !38, !"__ksymtab_remove_conflicting_framebuffers", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1765, i32 1}
!39 = !{ptr @__ksymtab_is_firmware_framebuffer, !40, !"__ksymtab_is_firmware_framebuffer", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1812, i32 1}
!41 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1846, i32 3}
!43 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @remove_conflicting_pci_framebuffers.__UNIQUE_ID_ddebug307, !42, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!46 = !{ptr @__ksymtab_remove_conflicting_pci_framebuffers, !47, !"__ksymtab_remove_conflicting_pci_framebuffers", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1860, i32 1}
!48 = !{ptr @__ksymtab_register_framebuffer, !49, !"__ksymtab_register_framebuffer", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1882, i32 1}
!50 = !{ptr @__ksymtab_unregister_framebuffer, !51, !"__ksymtab_unregister_framebuffer", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1907, i32 1}
!52 = !{ptr @__ksymtab_fb_set_suspend, !53, !"__ksymtab_fb_set_suspend", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1930, i32 1}
!54 = !{ptr @__initcall__kmod_fb__308_1990_fbmem_init4, !55, !"__initcall__kmod_fb__308_1990_fbmem_init4", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1990, i32 1}
!56 = !{ptr @__UNIQUE_ID_file309, !57, !"__UNIQUE_ID_file309", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 2022, i32 1}
!58 = !{ptr @__UNIQUE_ID_license310, !57, !"__UNIQUE_ID_license310", i1 false, i1 false}
!59 = !{ptr @registered_fb, !60, !"registered_fb", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 50, i32 17}
!61 = !{ptr @num_registered_fb, !62, !"num_registered_fb", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 53, i32 5}
!63 = !{ptr @fb_center_logo, !64, !"fb_center_logo", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 56, i32 6}
!65 = !{ptr @fb_logo, !66, !"fb_logo", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 356, i32 3}
!67 = !{ptr @fb_class, !68, !"fb_class", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1488, i32 15}
!69 = !{ptr @lockless_register_fb, !70, !"lockless_register_fb", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1578, i32 13}
!71 = !{ptr @fb_set_logo_truepalette.mask, !72, !"mask", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 232, i32 29}
!73 = !{ptr @__param_str_lockless_register_fb, !33, !"__param_str_lockless_register_fb", i1 false, i1 false}
!74 = !{ptr @.str.6, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 48, i32 8}
!76 = !{ptr @.str.7, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @registration_lock, !75, !"registration_lock", i1 false, i1 false}
!78 = !{ptr @.str.8, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1571, i32 4}
!80 = !{ptr @.str.9, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @do_remove_conflicting_framebuffers._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @do_remove_conflicting_framebuffers._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.10, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1538, i32 4}
!85 = !{ptr @.str.11, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @fb_do_apertures_overlap._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @fb_do_apertures_overlap._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @do_register_framebuffer.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1604, i32 2}
!90 = !{ptr @.str.12, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @do_register_framebuffer.__key.13, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1605, i32 2}
!93 = !{ptr @.str.14, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.15, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1608, i32 36}
!96 = !{ptr @.str.16, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1611, i32 3}
!98 = !{ptr @.str.17, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @do_register_framebuffer._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @do_register_framebuffer._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.18, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1504, i32 3}
!103 = !{ptr @.str.19, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @fb_check_foreignness._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @fb_check_foreignness._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.21, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1508, i32 3}
!108 = !{ptr @fb_check_foreignness._entry.20, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @fb_check_foreignness._entry_ptr.22, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.23, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1951, i32 3}
!112 = !{ptr @.str.24, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @fbmem_init._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @fbmem_init._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @fbmem_init.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1955, i32 13}
!117 = !{ptr @.str.25, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.27, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1958, i32 3}
!120 = !{ptr @fbmem_init._entry.26, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @fbmem_init._entry_ptr.28, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @proc_fb_seq_ops, !123, !"proc_fb_seq_ops", i1 false, i1 false}
!123 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 736, i32 51}
!124 = !{ptr @.str.29, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 732, i32 17}
!126 = !{ptr @fb_fops, !127, !"fb_fops", i1 false, i1 false}
!127 = !{!"../drivers/video/fbdev/core/fbmem.c", i32 1466, i32 37}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!130 = !{ptr @.str.30, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.31, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!133 = !{ptr @.str.32, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!135 = !{!"sp"}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i8 0, i8 2}
!146 = !{!"branch_weights", i32 1, i32 2000}
!147 = !{i64 2148999337, i64 2148999342, i64 2148999355, i64 2148999399, i64 2148999433, i64 2148999454}
!148 = !{i64 2148385960, i64 2148385986, i64 2148386015, i64 2148386049, i64 2148386080, i64 2148386103}
!149 = !{i64 2148388425, i64 2148388451, i64 2148388480, i64 2148388514, i64 2148388545, i64 2148388568}
!150 = !{!"branch_weights", i32 2000, i32 1}
!151 = !{i64 2148475515}
!152 = !{i64 2148389955, i64 2148389987, i64 2148390016, i64 2148390050, i64 2148390081, i64 2148390104}
!153 = !{i64 2149351629}
!154 = !{i64 2152549882, i64 2152549907}
!155 = !{i64 2152549201, i64 2152549226}
!156 = !{i64 5044756}
!157 = !{i64 5044953}
!158 = !{i64 2152530186}
!159 = !{i64 2148387490, i64 2148387522, i64 2148387551, i64 2148387585, i64 2148387616, i64 2148387639}
