class desktop_picture (
    $path = '/Library/Desktop Pictures/El Capitan.jpg'
)
{
    mac_profiles_handler::manage { 'org.archimedean.desktop':
        ensure      => 'present',
        file_source => template('desktop_picture/org.archimedean.config.desktop.mobileconfig.erb'),
        type        => 'template',
    }
}
